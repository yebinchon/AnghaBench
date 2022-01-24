#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {char* sun_path; int /*<<< orphan*/  sun_family; } ;
struct TYPE_21__ {int daemon_pid; int /*<<< orphan*/ * engine; int /*<<< orphan*/  thread_key; TYPE_5__ sun_; int /*<<< orphan*/  auth_token; } ;
typedef  TYPE_1__ neverbleed_t ;
struct TYPE_24__ {TYPE_1__* nb; } ;
struct TYPE_22__ {int /*<<< orphan*/  rsa_verify; int /*<<< orphan*/  rsa_pub_dec; int /*<<< orphan*/  rsa_pub_enc; } ;
typedef  TYPE_2__ RSA_METHOD ;
typedef  int /*<<< orphan*/  EC_KEY_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  NEVERBLEED_ERRBUF_SIZE ; 
 int /*<<< orphan*/  PF_UNIX ; 
 int /*<<< orphan*/  PR_SET_DUMPABLE ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC14 () ; 
 TYPE_2__* FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__ const*) ; 
 TYPE_2__* FUNC19 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOMAXCONN ; 
 scalar_t__ FUNC27 (int,void*,int) ; 
 int /*<<< orphan*/  FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (int,int,char*) ; 
 TYPE_6__ daemon_vars ; 
 int /*<<< orphan*/  dispose_thread_data ; 
 int /*<<< orphan*/  ecdsa_sign_proxy ; 
 int /*<<< orphan*/  errno ; 
 int FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (char*) ; 
 scalar_t__ FUNC32 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC34 (char*) ; 
 scalar_t__ FUNC35 (int*) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  priv_dec_proxy ; 
 int /*<<< orphan*/  priv_ecdsa_finish ; 
 int /*<<< orphan*/  priv_enc_proxy ; 
 int /*<<< orphan*/  priv_rsa_finish ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int) ; 
 int /*<<< orphan*/  sign_proxy ; 
 int /*<<< orphan*/  FUNC39 (char*,int,char*,...) ; 
 int FUNC40 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ static_rsa_method ; 
 char* FUNC41 (char*) ; 
 char* FUNC42 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (char*) ; 

int FUNC44(neverbleed_t *nb, char *errbuf)
{
    int pipe_fds[2] = {-1, -1}, listen_fd = -1;
    char *tempdir = NULL;
#if OPENSSL_1_1_API
    const RSA_METHOD *default_method = RSA_PKCS1_OpenSSL();
    EC_KEY_METHOD *ecdsa_method;
    const EC_KEY_METHOD *ecdsa_default_method;
    RSA_METHOD *rsa_method = RSA_meth_new("privsep RSA method", 0);

    RSA_meth_set_priv_enc(rsa_method, priv_enc_proxy);
    RSA_meth_set_priv_dec(rsa_method, priv_dec_proxy);
    RSA_meth_set_sign(rsa_method, sign_proxy);

    RSA_meth_set_pub_enc(rsa_method, RSA_meth_get_pub_enc(default_method));
    RSA_meth_set_pub_dec(rsa_method, RSA_meth_get_pub_dec(default_method));
    RSA_meth_set_verify(rsa_method, RSA_meth_get_verify(default_method));

    RSA_meth_set_finish(rsa_method, priv_rsa_finish);

    /* setup EC_KEY_METHOD for ECDSA */
    ecdsa_default_method = EC_KEY_get_default_method();
    ecdsa_method = EC_KEY_METHOD_new(ecdsa_default_method);

    EC_KEY_METHOD_set_keygen(ecdsa_method, NULL);
    EC_KEY_METHOD_set_compute_key(ecdsa_method, NULL);
    /* it seems sign_sig and sign_setup is not used in TLS ECDSA. */
    EC_KEY_METHOD_set_sign(ecdsa_method, ecdsa_sign_proxy, NULL, NULL);
    EC_KEY_METHOD_set_init(ecdsa_method, NULL, priv_ecdsa_finish, NULL, NULL, NULL, NULL);
#else
    const RSA_METHOD *default_method = FUNC15();
    RSA_METHOD *rsa_method = &static_rsa_method;

    rsa_method->rsa_pub_enc = default_method->rsa_pub_enc;
    rsa_method->rsa_pub_dec = default_method->rsa_pub_dec;
    rsa_method->rsa_verify = default_method->rsa_verify;
#endif

    /* setup the daemon */
    if (FUNC35(pipe_fds) != 0) {
        FUNC39(errbuf, NEVERBLEED_ERRBUF_SIZE, "pipe(2) failed:%s", FUNC42(errno));
        goto Fail;
    }
    FUNC38(pipe_fds[1]);
    if ((tempdir = FUNC41("/tmp/openssl-privsep.XXXXXX")) == NULL) {
        FUNC39(errbuf, NEVERBLEED_ERRBUF_SIZE, "no memory");
        goto Fail;
    }
    if (FUNC34(tempdir) == NULL) {
        FUNC39(errbuf, NEVERBLEED_ERRBUF_SIZE, "failed to create temporary directory under /tmp:%s", FUNC42(errno));
        goto Fail;
    }
    FUNC33(&nb->sun_, 0, sizeof(nb->sun_));
    nb->sun_.sun_family = AF_UNIX;
    FUNC39(nb->sun_.sun_path, sizeof(nb->sun_.sun_path), "%s/_", tempdir);
    FUNC13(nb->auth_token, sizeof(nb->auth_token));
    if ((listen_fd = FUNC40(PF_UNIX, SOCK_STREAM, 0)) == -1) {
        FUNC39(errbuf, NEVERBLEED_ERRBUF_SIZE, "socket(2) failed:%s", FUNC42(errno));
        goto Fail;
    }
    if (FUNC27(listen_fd, (void *)&nb->sun_, sizeof(nb->sun_)) != 0) {
        FUNC39(errbuf, NEVERBLEED_ERRBUF_SIZE, "failed to bind to %s:%s", nb->sun_.sun_path, FUNC42(errno));
        goto Fail;
    }
    if (FUNC32(listen_fd, SOMAXCONN) != 0) {
        FUNC39(errbuf, NEVERBLEED_ERRBUF_SIZE, "listen(2) failed:%s", FUNC42(errno));
        goto Fail;
    }
    nb->daemon_pid = FUNC30();
    switch (nb->daemon_pid) {
    case -1:
        FUNC39(errbuf, NEVERBLEED_ERRBUF_SIZE, "fork(2) failed:%s", FUNC42(errno));
        goto Fail;
    case 0:
        FUNC28(pipe_fds[1]);
#ifdef __linux__
        FUNC36(PR_SET_DUMPABLE, 0, 0, 0, 0);
#endif
        daemon_vars.nb = nb;
        FUNC29(listen_fd, pipe_fds[0], tempdir);
        break;
    default:
        break;
    }
    FUNC28(listen_fd);
    listen_fd = -1;
    FUNC28(pipe_fds[0]);
    pipe_fds[0] = -1;

    /* setup engine */
    if ((nb->engine = FUNC8()) == NULL || !FUNC11(nb->engine, "neverbleed") ||
        !FUNC12(nb->engine, "privilege separation software engine") || !FUNC10(nb->engine, rsa_method)
#if OPENSSL_1_1_API
        || !ENGINE_set_EC(nb->engine, ecdsa_method)
#endif
            ) {
        FUNC39(errbuf, NEVERBLEED_ERRBUF_SIZE, "failed to initialize the OpenSSL engine");
        goto Fail;
    }
    FUNC6(nb->engine);

    /* setup thread key */
    FUNC37(&nb->thread_key, dispose_thread_data);

    FUNC31(tempdir);
    return 0;
Fail:
    if (pipe_fds[0] != -1)
        FUNC28(pipe_fds[0]);
    if (pipe_fds[1] != -1)
        FUNC28(pipe_fds[1]);
    if (tempdir != NULL) {
        FUNC43(tempdir);
        FUNC31(tempdir);
    }
    if (listen_fd != -1)
        FUNC28(listen_fd);
    if (nb->engine != NULL) {
        FUNC7(nb->engine);
        nb->engine = NULL;
    }
    return -1;
}