#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct st_neverbleed_thread_data_t {int /*<<< orphan*/  fd; } ;
struct expbuf_t {int /*<<< orphan*/ * member_0; } ;
typedef  int /*<<< orphan*/  neverbleed_t ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NEVERBLEED_ERRBUF_SIZE ; 
#define  NEVERBLEED_TYPE_ECDSA 129 
#define  NEVERBLEED_TYPE_RSA 128 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,size_t,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,size_t,size_t,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (struct expbuf_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct expbuf_t*,char const*) ; 
 scalar_t__ FUNC7 (struct expbuf_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct expbuf_t*,size_t*) ; 
 char* FUNC9 (struct expbuf_t*) ; 
 scalar_t__ FUNC10 (struct expbuf_t*,int /*<<< orphan*/ ) ; 
 struct st_neverbleed_thread_data_t* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,char*,...) ; 

int FUNC13(neverbleed_t *nb, SSL_CTX *ctx, const char *fn, char *errbuf)
{
    struct st_neverbleed_thread_data_t *thdata = FUNC11(nb);
    struct expbuf_t buf = {NULL};
    int ret = 1;
    size_t index, type;
    EVP_PKEY *pkey;

    FUNC6(&buf, "load_key");
    FUNC6(&buf, fn);
    if (FUNC10(&buf, thdata->fd) != 0)
        FUNC3(errno != 0 ? "write error" : "connection closed by daemon");
    FUNC5(&buf);

    if (FUNC7(&buf, thdata->fd) != 0)
        FUNC3(errno != 0 ? "read error" : "connection closed by daemon");
    if (FUNC8(&buf, &type) != 0 || FUNC8(&buf, &index) != 0) {
        errno = 0;
        FUNC3("failed to parse response");
    }

    switch (type) {
    case NEVERBLEED_TYPE_RSA: {
        char *estr, *nstr;

        if ((estr = FUNC9(&buf)) == NULL || (nstr = FUNC9(&buf)) == NULL) {
            errno = 0;
            FUNC3("failed to parse response");
        }
        pkey = FUNC2(nb, index, estr, nstr);
        break;
    }
#if OPENSSL_1_1_API
    case NEVERBLEED_TYPE_ECDSA: {
        char *ec_pubkeystr;
        size_t curve_name;

        if (expbuf_shift_num(&buf, &curve_name) != 0 || (ec_pubkeystr = expbuf_shift_str(&buf)) == NULL) {
            errno = 0;
            dief("failed to parse response");
        }
        pkey = ecdsa_create_pkey(nb, index, curve_name, ec_pubkeystr);
        break;
    }
#endif
    default: {
        char *errstr;

        if ((errstr = FUNC9(&buf)) == NULL) {
            errno = 0;
            FUNC3("failed to parse response");
        }

        FUNC12(errbuf, NEVERBLEED_ERRBUF_SIZE, "%s", errstr);
        return -1;
    }
    }

    FUNC5(&buf);

    /* success */
    if (FUNC1(ctx, pkey) != 1) {
        FUNC12(errbuf, NEVERBLEED_ERRBUF_SIZE, "SSL_CTX_use_PrivateKey failed");
        ret = 0;
    }

    FUNC0(pkey);
    return ret;
}