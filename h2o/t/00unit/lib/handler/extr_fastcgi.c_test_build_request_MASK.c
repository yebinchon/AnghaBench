#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_13__ ;
typedef  struct TYPE_17__   TYPE_12__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
struct TYPE_22__ {size_t size; TYPE_12__* entries; } ;
typedef  TYPE_4__ iovec_vector_t ;
struct TYPE_19__ {void* path; void* authority; int /*<<< orphan*/ * scheme; void* method; } ;
struct TYPE_18__ {int version; void* entity; int /*<<< orphan*/  headers; int /*<<< orphan*/  pool; TYPE_10__* hostconf; int /*<<< orphan*/  pathconf; int /*<<< orphan*/  query_at; void* path; void* path_normalized; TYPE_1__ input; void* authority; int /*<<< orphan*/ * scheme; void* method; } ;
struct TYPE_23__ {TYPE_13__ req; } ;
typedef  TYPE_5__ h2o_loopback_conn_t ;
struct TYPE_24__ {int member_0; void* document_root; int /*<<< orphan*/  member_1; } ;
typedef  TYPE_6__ h2o_fastcgi_config_vars_t ;
struct TYPE_25__ {TYPE_2__* globalconf; } ;
struct TYPE_21__ {int /*<<< orphan*/  entries; } ;
struct TYPE_20__ {TYPE_10__** hosts; } ;
struct TYPE_17__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_16__ {TYPE_3__ paths; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  H2O_TOKEN_COOKIE ; 
 int /*<<< orphan*/  H2O_TOKEN_USER_AGENT ; 
 int /*<<< orphan*/  H2O_URL_SCHEME_HTTP ; 
 int /*<<< orphan*/  SIZE_MAX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_13__*,TYPE_4__*,int,int,TYPE_6__*) ; 
 int FUNC2 (TYPE_12__*,size_t*,int,int /*<<< orphan*/ ) ; 
 TYPE_9__ ctx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC5 (TYPE_9__*,TYPE_10__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(void)
{
    h2o_loopback_conn_t *conn = FUNC5(&ctx, ctx.globalconf->hosts);
    h2o_fastcgi_config_vars_t config = {5000, 0};
    iovec_vector_t vecs;
    size_t vec_index;

    conn->req.input.method = conn->req.method = FUNC4(FUNC0("GET"));
    conn->req.input.scheme = conn->req.scheme = &H2O_URL_SCHEME_HTTP;
    conn->req.input.authority = conn->req.authority = FUNC4(FUNC0("localhost"));
    conn->req.input.path = conn->req.path = FUNC4(FUNC0("/"));
    conn->req.path_normalized = conn->req.path;
    conn->req.query_at = SIZE_MAX;
    conn->req.version = 0x101;
    conn->req.hostconf = *ctx.globalconf->hosts;
    conn->req.pathconf = conn->req.hostconf->paths.entries;
    FUNC3(&conn->req.pool, &conn->req.headers, H2O_TOKEN_COOKIE, NULL, FUNC0("foo=bar"));
    FUNC3(&conn->req.pool, &conn->req.headers, H2O_TOKEN_USER_AGENT, NULL,
                   FUNC0("Mozilla/5.0 (X11; Linux) KHTML/4.9.1 (like Gecko) Konqueror/4.9"));

    /* build with max_record_size=65535 */
    FUNC1(&conn->req, &vecs, 0x1234, 65535, &config);
    FUNC8(FUNC7(vecs.entries[0].base, vecs.entries[0].len,
                 FUNC0("\x01\x01\x12\x34\x00\x08\x00\x00"
                            "\x00\x01\0\0\0\0\0\0")));
    vec_index = 1;
    FUNC8(FUNC2(vecs.entries, &vec_index, 0x1234,
                    FUNC0("\x0b\x00SCRIPT_NAME"                                                                    /* */
                               "\x09\x01PATH_INFO/"                                                                     /* */
                               "\x0c\x00QUERY_STRING"                                                                   /* */
                               "\x0b\x09REMOTE_ADDR127.0.0.1"                                                           /* */
                               "\x0b\x05REMOTE_PORT55555"                                                               /* */
                               "\x0e\x03REQUEST_METHODGET"                                                              /* */
                               "\x09\x09HTTP_HOSTlocalhost"                                                             /* */
                               "\x0b\x01REQUEST_URI/"                                                                   /* */
                               "\x0b\x09SERVER_ADDR127.0.0.1"                                                           /* */
                               "\x0b\x02SERVER_PORT80"                                                                  /* */
                               "\x0b\x07SERVER_NAMEdefault"                                                             /* */
                               "\x0f\x08SERVER_PROTOCOLHTTP/1.1"                                                        /* */
                               "\x0f\x10SERVER_SOFTWAREh2o/1.2.1-alpha1"                                                /* */
                               "\x0f\x3fHTTP_USER_AGENTMozilla/5.0 (X11; Linux) KHTML/4.9.1 (like Gecko) Konqueror/4.9" /* */
                               "\x0b\x07HTTP_COOKIEfoo=bar"                                                             /* */
                               )));
    FUNC8(FUNC7(vecs.entries[vec_index].base, vecs.entries[vec_index].len, FUNC0("\x01\x05\x12\x34\x00\x00\x00\x00")));
    ++vec_index;
    FUNC8(vec_index == vecs.size);

    /* build with max_record_size=64, DOCUMENT_ROOT, additional cookie, and content */
    config.document_root = FUNC4(FUNC0("/var/www/htdocs"));
    FUNC3(&conn->req.pool, &conn->req.headers, H2O_TOKEN_COOKIE, NULL, FUNC0("hoge=fuga"));
    conn->req.entity = FUNC4(FUNC0("The above copyright notice and this permission notice shall be included in all "
                                                 "copies or substantial portions of the Software."));
    FUNC1(&conn->req, &vecs, 0x1234, 64, &config);
    FUNC8(FUNC7(vecs.entries[0].base, vecs.entries[0].len,
                 FUNC0("\x01\x01\x12\x34\x00\x08\x00\x00"
                            "\x00\x01\0\0\0\0\0\0")));
    vec_index = 1;
    FUNC8(FUNC2(vecs.entries, &vec_index, 0x1234,
                    FUNC0("\x0e\x03"
                               "CONTENT_LENGTH126"   /* */
                               "\x0b\x00SCRIPT_NAME" /* */
                               "\x09\x01PATH_INFO/"  /* */
                               "\x0d\x0f"
                               "DOCUMENT_ROOT/var/www/htdocs"                                                           /* */
                               "\x0f\x10PATH_TRANSLATED/var/www/htdocs/"                                                /* */
                               "\x0c\x00QUERY_STRING"                                                                   /* */
                               "\x0b\x09REMOTE_ADDR127.0.0.1"                                                           /* */
                               "\x0b\x05REMOTE_PORT55555"                                                               /* */
                               "\x0e\x03REQUEST_METHODGET"                                                              /* */
                               "\x09\x09HTTP_HOSTlocalhost"                                                             /* */
                               "\x0b\x01REQUEST_URI/"                                                                   /* */
                               "\x0b\x09SERVER_ADDR127.0.0.1"                                                           /* */
                               "\x0b\x02SERVER_PORT80"                                                                  /* */
                               "\x0b\x07SERVER_NAMEdefault"                                                             /* */
                               "\x0f\x08SERVER_PROTOCOLHTTP/1.1"                                                        /* */
                               "\x0f\x10SERVER_SOFTWAREh2o/1.2.1-alpha1"                                                /* */
                               "\x0f\x3fHTTP_USER_AGENTMozilla/5.0 (X11; Linux) KHTML/4.9.1 (like Gecko) Konqueror/4.9" /* */
                               "\x0b\x11HTTP_COOKIEfoo=bar;hoge=fuga"                                                   /* */
                               )));
    FUNC8(FUNC7(vecs.entries[vec_index].base, vecs.entries[vec_index].len, FUNC0("\x01\x05\x12\x34\x00\x40\x00\x00")));
    ++vec_index;
    FUNC8(FUNC7(vecs.entries[vec_index].base, vecs.entries[vec_index].len,
                 FUNC0("The above copyright notice and this permission notice shall be i")));
    ++vec_index;
    FUNC8(FUNC7(vecs.entries[vec_index].base, vecs.entries[vec_index].len, FUNC0("\x01\x05\x12\x34\x00\x3e\x00\x00")));
    ++vec_index;
    FUNC8(FUNC7(vecs.entries[vec_index].base, vecs.entries[vec_index].len,
                 FUNC0("ncluded in all copies or substantial portions of the Software.")));
    ++vec_index;
    FUNC8(FUNC7(vecs.entries[vec_index].base, vecs.entries[vec_index].len, FUNC0("\x01\x05\x12\x34\x00\x00\x00\x00")));
    ++vec_index;
    FUNC8(vec_index == vecs.size);

    FUNC6(conn);
}