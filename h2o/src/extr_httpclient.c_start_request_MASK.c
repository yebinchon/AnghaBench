#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  h2o_url_t ;
typedef  int /*<<< orphan*/  h2o_socketpool_target_t ;
typedef  int /*<<< orphan*/  h2o_socketpool_t ;
struct TYPE_7__ {int /*<<< orphan*/  loop; int /*<<< orphan*/ * http3; } ;
typedef  TYPE_1__ h2o_httpclient_ctx_t ;
struct TYPE_8__ {int /*<<< orphan*/  body_size; int /*<<< orphan*/  url; } ;
typedef  int /*<<< orphan*/  SSL_CTX ;

/* Variables and functions */
 char* CA_PATH ; 
 int /*<<< orphan*/  H2O_ROOT ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IO_TIMEOUT ; 
 int /*<<< orphan*/  SIZE_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int SSL_VERIFY_FAIL_IF_NO_PEER_CERT ; 
 int SSL_VERIFY_NONE ; 
 int SSL_VERIFY_PEER ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * connpool ; 
 int /*<<< orphan*/  cur_req_body_size ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC10 (int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  on_connect ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pool ; 
 TYPE_3__ req ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,char*,char*) ; 
 scalar_t__ ssl_verify_none ; 
 int FUNC21 (char*) ; 

__attribute__((used)) static void FUNC22(h2o_httpclient_ctx_t *ctx)
{
    h2o_url_t *url_parsed;

    /* clear memory pool */
    FUNC12(&pool);

    /* parse URL */
    url_parsed = FUNC11(&pool, *url_parsed, 1);
    if (FUNC18(req.url, SIZE_MAX, url_parsed) != 0) {
        FUNC19(ctx, "unrecognized type of URL: %s", req.url);
        return;
    }

    cur_req_body_size = req.body_size;

    /* initiate the request */
    if (ctx->http3 != NULL) {
        FUNC8(NULL, &pool, url_parsed, ctx, url_parsed, on_connect);
    } else {
        if (connpool == NULL) {
            connpool = FUNC10(sizeof(*connpool));
            h2o_socketpool_t *sockpool = FUNC10(sizeof(*sockpool));
            h2o_socketpool_target_t *target = FUNC13(url_parsed, NULL);
            FUNC14(sockpool, 10, &target, 1, NULL);
            FUNC17(sockpool, IO_TIMEOUT);
            FUNC15(sockpool, ctx->loop);
            FUNC9(connpool, sockpool);

            /* obtain root */
            char *root, *crt_fullpath;
            if ((root = FUNC6("H2O_ROOT")) == NULL)
                root = FUNC0(H2O_ROOT);
#define CA_PATH "/share/h2o/ca-bundle.crt"
            crt_fullpath = FUNC10(FUNC21(root) + FUNC21(CA_PATH) + 1);
            FUNC20(crt_fullpath, "%s%s", root, CA_PATH);
#undef CA_PATH

            SSL_CTX *ssl_ctx = FUNC3(FUNC5());
            FUNC2(ssl_ctx, crt_fullpath, NULL);
            if (ssl_verify_none) {
                FUNC4(ssl_ctx, SSL_VERIFY_NONE, NULL);
            } else {
                FUNC4(ssl_ctx, SSL_VERIFY_PEER | SSL_VERIFY_FAIL_IF_NO_PEER_CERT, NULL);
            }
            FUNC16(sockpool, ssl_ctx);
            FUNC1(ssl_ctx);
        }
        FUNC7(NULL, &pool, url_parsed, ctx, connpool, url_parsed, on_connect);
    }
}