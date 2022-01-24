#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct st_neverbleed_rsa_exdata_t {size_t key_index; TYPE_1__* nb; } ;
struct TYPE_3__ {int /*<<< orphan*/  engine; } ;
typedef  TYPE_1__ neverbleed_t ;
typedef  int /*<<< orphan*/  RSA ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RSA_FLAG_EXT_PKEY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct st_neverbleed_rsa_exdata_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 struct st_neverbleed_rsa_exdata_t* FUNC10 (int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static EVP_PKEY *FUNC11(neverbleed_t *nb, size_t key_index, const char *ebuf, const char *nbuf)
{
    struct st_neverbleed_rsa_exdata_t *exdata;
    RSA *rsa;
    EVP_PKEY *pkey;
    BIGNUM *e = NULL, *n = NULL;

    if ((exdata = FUNC10(sizeof(*exdata))) == NULL) {
        FUNC9(stderr, "no memory\n");
        FUNC8();
    }
    exdata->nb = nb;
    exdata->key_index = key_index;

    rsa = FUNC4(nb->engine);
    FUNC6(rsa, 0, exdata);
    if (FUNC0(&e, ebuf) == 0) {
        FUNC9(stderr, "failed to parse e:%s\n", ebuf);
        FUNC8();
    }
    if (FUNC0(&n, nbuf) == 0) {
        FUNC9(stderr, "failed to parse n:%s\n", nbuf);
        FUNC8();
    }
    FUNC5(rsa, n, e, NULL);
    FUNC7(rsa, RSA_FLAG_EXT_PKEY);

    pkey = FUNC1();
    FUNC2(pkey, rsa);
    FUNC3(rsa);

    return pkey;
}