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
typedef  int /*<<< orphan*/  h2o_cache_t ;
typedef  int /*<<< orphan*/  X509_STORE ;
typedef  int /*<<< orphan*/  SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_SESSID_CTX ; 
 int /*<<< orphan*/  H2O_SESSID_CTX_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(SSL_CTX **ctx, X509_STORE *cert_store, int verify_mode, h2o_cache_t **session_cache)
{
    FUNC7(*ctx != NULL);

    /* inherit the properties that weren't specified */
    if (cert_store == NULL)
        cert_store = FUNC1(*ctx);
    FUNC6(cert_store);
    if (verify_mode == -1)
        verify_mode = FUNC2(*ctx);
    h2o_cache_t *new_session_cache;
    if (session_cache == NULL) {
        h2o_cache_t *current = FUNC12(*ctx);
        new_session_cache =
            current == NULL ? NULL : FUNC9(FUNC10(current), FUNC11(current));
    } else {
        new_session_cache = *session_cache;
    }

    /* free the existing context */
    if (*ctx != NULL)
        FUNC0(*ctx);

    /* create new ctx */
    *ctx = FUNC8();
    FUNC4(*ctx, H2O_SESSID_CTX, H2O_SESSID_CTX_LEN);
    FUNC3(*ctx, cert_store);
    FUNC5(*ctx, verify_mode, NULL);
    if (new_session_cache != NULL)
        FUNC13(*ctx, new_session_cache);
}