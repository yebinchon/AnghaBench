#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_46__   TYPE_9__ ;
typedef  struct TYPE_45__   TYPE_8__ ;
typedef  struct TYPE_44__   TYPE_7__ ;
typedef  struct TYPE_43__   TYPE_6__ ;
typedef  struct TYPE_42__   TYPE_5__ ;
typedef  struct TYPE_41__   TYPE_4__ ;
typedef  struct TYPE_40__   TYPE_3__ ;
typedef  struct TYPE_39__   TYPE_2__ ;
typedef  struct TYPE_38__   TYPE_24__ ;
typedef  struct TYPE_37__   TYPE_20__ ;
typedef  struct TYPE_36__   TYPE_1__ ;
typedef  struct TYPE_35__   TYPE_19__ ;
typedef  struct TYPE_34__   TYPE_18__ ;
typedef  struct TYPE_33__   TYPE_17__ ;
typedef  struct TYPE_32__   TYPE_16__ ;
typedef  struct TYPE_31__   TYPE_15__ ;
typedef  struct TYPE_30__   TYPE_14__ ;
typedef  struct TYPE_29__   TYPE_13__ ;
typedef  struct TYPE_28__   TYPE_12__ ;
typedef  struct TYPE_27__   TYPE_11__ ;
typedef  struct TYPE_26__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_int ;
struct TYPE_33__ {int /*<<< orphan*/  constants; int /*<<< orphan*/ * mrb; } ;
typedef  TYPE_17__ h2o_mruby_shared_context_t ;
struct TYPE_26__ {int /*<<< orphan*/  generator; int /*<<< orphan*/  error_stream; } ;
struct TYPE_34__ {TYPE_24__* req; TYPE_10__ refs; int /*<<< orphan*/  error_stream; int /*<<< orphan*/  rack_input; TYPE_11__* ctx; } ;
typedef  TYPE_18__ h2o_mruby_generator_t ;
struct TYPE_35__ {char* base; int len; } ;
typedef  TYPE_19__ h2o_iovec_t ;
struct TYPE_45__ {char* base; int len; } ;
struct TYPE_46__ {TYPE_8__ name; } ;
struct TYPE_44__ {size_t size; TYPE_19__* entries; } ;
struct TYPE_43__ {int /*<<< orphan*/  get_peername; int /*<<< orphan*/  get_sockname; } ;
struct TYPE_42__ {scalar_t__ len; int /*<<< orphan*/ * base; } ;
struct TYPE_41__ {char* base; int len; } ;
struct TYPE_36__ {char* base; int len; } ;
struct TYPE_39__ {TYPE_1__ host; } ;
struct TYPE_40__ {TYPE_2__ authority; } ;
struct TYPE_32__ {char* base; int len; } ;
struct TYPE_29__ {size_t len; } ;
struct TYPE_28__ {char* base; int len; } ;
struct TYPE_38__ {scalar_t__ query_at; int reprocess_if_too_early; int /*<<< orphan*/  remaining_reprocesses; int /*<<< orphan*/  remaining_delegations; TYPE_9__* scheme; TYPE_20__* conn; int /*<<< orphan*/  headers; int /*<<< orphan*/  pool; TYPE_7__ env; TYPE_5__ entity; TYPE_4__ authority; int /*<<< orphan*/  version; TYPE_3__* hostconf; TYPE_16__ path; TYPE_15__* pathconf; TYPE_13__ path_normalized; TYPE_12__ method; } ;
struct TYPE_37__ {TYPE_6__* callbacks; } ;
struct TYPE_30__ {size_t len; char* base; } ;
struct TYPE_31__ {TYPE_14__ path; } ;
struct TYPE_27__ {TYPE_17__* shared; } ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_MRUBY_ERROR_STREAM_CLASS ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_CONTENT_LENGTH ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_H2O_REMAINING_DELEGATIONS ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_H2O_REMAINING_REPROCESSES ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_PATH_INFO ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_QUERY_STRING ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_RACK_EARLY_HINTS ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_RACK_ERRORS ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_RACK_HIJACK_ ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_RACK_INPUT ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_RACK_MULTIPROCESS ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_RACK_MULTITHREAD ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_RACK_RUN_ONCE ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_RACK_URL_SCHEME ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_REMOTE_ADDR ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_REMOTE_PORT ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_REQUEST_METHOD ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_SCRIPT_NAME ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_SERVER_ADDR ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_SERVER_NAME ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_SERVER_PORT ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_SERVER_PROTOCOL ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_SERVER_SOFTWARE ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_SERVER_SOFTWARE_VALUE ; 
 int /*<<< orphan*/  H2O_TOKEN_EARLY_DATA ; 
 int /*<<< orphan*/  H2O_TOKEN_HOST ; 
 scalar_t__ SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_24__*,size_t) ; 
 int /*<<< orphan*/  error_stream_type ; 
 scalar_t__ FUNC2 (TYPE_20__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_17__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_17__*,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iterate_headers_callback ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  on_rack_input_free ; 
 int /*<<< orphan*/  send_early_hints_proc ; 
 int FUNC23 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_20__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static mrb_value FUNC25(h2o_mruby_generator_t *generator)
{
    h2o_mruby_shared_context_t *shared = generator->ctx->shared;
    mrb_state *mrb = shared->mrb;
    mrb_value env = FUNC12(mrb, 16);
    char http_version[sizeof("HTTP/1.0")];
    size_t http_version_sz;

    /* environment */
    FUNC13(mrb, env, FUNC8(shared->constants, H2O_MRUBY_LIT_REQUEST_METHOD),
                 FUNC5(mrb, generator->req->method.base, generator->req->method.len));

    size_t confpath_len_wo_slash = generator->req->pathconf->path.len;
    if (generator->req->pathconf->path.base[generator->req->pathconf->path.len - 1] == '/')
        --confpath_len_wo_slash;
    FUNC0(confpath_len_wo_slash <= generator->req->path_normalized.len);

    FUNC13(mrb, env, FUNC8(shared->constants, H2O_MRUBY_LIT_SCRIPT_NAME),
                 FUNC5(mrb, generator->req->pathconf->path.base, confpath_len_wo_slash));
    FUNC13(mrb, env, FUNC8(shared->constants, H2O_MRUBY_LIT_PATH_INFO),
                 FUNC1(mrb, generator->req, confpath_len_wo_slash));
    FUNC13(mrb, env, FUNC8(shared->constants, H2O_MRUBY_LIT_QUERY_STRING),
                 generator->req->query_at != SIZE_MAX
                     ? FUNC5(mrb, generator->req->path.base + generator->req->query_at + 1,
                                         generator->req->path.len - (generator->req->query_at + 1))
                     : FUNC21(mrb, ""));
    FUNC13(
        mrb, env, FUNC8(shared->constants, H2O_MRUBY_LIT_SERVER_NAME),
        FUNC5(mrb, generator->req->hostconf->authority.host.base, generator->req->hostconf->authority.host.len));
    http_version_sz = FUNC7(http_version, generator->req->version);
    FUNC13(mrb, env, FUNC8(shared->constants, H2O_MRUBY_LIT_SERVER_PROTOCOL),
                 FUNC5(mrb, http_version, http_version_sz));
    {
        mrb_value h, p;
        FUNC24(generator->req->conn, generator->req->conn->callbacks->get_sockname, mrb, &h, &p);
        if (!FUNC16(h))
            FUNC13(mrb, env, FUNC8(shared->constants, H2O_MRUBY_LIT_SERVER_ADDR), h);
        if (!FUNC16(p))
            FUNC13(mrb, env, FUNC8(shared->constants, H2O_MRUBY_LIT_SERVER_PORT), p);
    }
    FUNC13(mrb, env, FUNC6(shared, H2O_TOKEN_HOST),
                 FUNC5(mrb, generator->req->authority.base, generator->req->authority.len));
    if (generator->req->entity.base != NULL) {
        char buf[32];
        int l = FUNC23(buf, "%zu", generator->req->entity.len);
        FUNC13(mrb, env, FUNC8(shared->constants, H2O_MRUBY_LIT_CONTENT_LENGTH), FUNC5(mrb, buf, l));
        generator->rack_input = FUNC15(mrb, NULL, 0);
        FUNC14(mrb, generator->rack_input, generator->req->entity.base, (mrb_int)generator->req->entity.len, 0,
                                  on_rack_input_free, &generator->rack_input);
        FUNC13(mrb, env, FUNC8(shared->constants, H2O_MRUBY_LIT_RACK_INPUT), generator->rack_input);
    }
    {
        mrb_value h, p;
        FUNC24(generator->req->conn, generator->req->conn->callbacks->get_peername, mrb, &h, &p);
        if (!FUNC16(h))
            FUNC13(mrb, env, FUNC8(shared->constants, H2O_MRUBY_LIT_REMOTE_ADDR), h);
        if (!FUNC16(p))
            FUNC13(mrb, env, FUNC8(shared->constants, H2O_MRUBY_LIT_REMOTE_PORT), p);
    }
    {
        size_t i;
        for (i = 0; i != generator->req->env.size; i += 2) {
            h2o_iovec_t *name = generator->req->env.entries + i, *value = name + 1;
            FUNC13(mrb, env, FUNC5(mrb, name->base, name->len), FUNC5(mrb, value->base, value->len));
        }
    }

    /* headers */
    FUNC4(shared, &generator->req->pool, &generator->req->headers, iterate_headers_callback,
                                     FUNC18(env));
    mrb_value early_data_key = FUNC6(shared, H2O_TOKEN_EARLY_DATA);
    int found_early_data = !FUNC16(FUNC11(mrb, env, early_data_key, FUNC17()));
    if (!found_early_data && FUNC2(generator->req->conn)) {
        FUNC13(mrb, env, early_data_key, FUNC5(mrb, "1", 1));
        generator->req->reprocess_if_too_early = 1;
    }

    /* rack.* */
    /* TBD rack.version? */
    FUNC13(mrb, env, FUNC8(shared->constants, H2O_MRUBY_LIT_RACK_URL_SCHEME),
                 FUNC5(mrb, generator->req->scheme->name.base, generator->req->scheme->name.len));
    /* we are using shared-none architecture, and therefore declare ourselves as multiprocess */
    FUNC13(mrb, env, FUNC8(shared->constants, H2O_MRUBY_LIT_RACK_MULTITHREAD), FUNC9());
    FUNC13(mrb, env, FUNC8(shared->constants, H2O_MRUBY_LIT_RACK_MULTIPROCESS), FUNC22());
    FUNC13(mrb, env, FUNC8(shared->constants, H2O_MRUBY_LIT_RACK_RUN_ONCE), FUNC9());
    FUNC13(mrb, env, FUNC8(shared->constants, H2O_MRUBY_LIT_RACK_HIJACK_), FUNC9());
    mrb_value error_stream = FUNC3(
        shared->mrb, FUNC8(shared->constants, H2O_MRUBY_ERROR_STREAM_CLASS), generator->error_stream, &error_stream_type);
    FUNC13(mrb, env, FUNC8(shared->constants, H2O_MRUBY_LIT_RACK_ERRORS), error_stream);
    generator->refs.error_stream = error_stream;
    FUNC13(mrb, env, FUNC8(shared->constants, H2O_MRUBY_LIT_RACK_EARLY_HINTS),
                 FUNC19(FUNC20(mrb, send_early_hints_proc, 1, &generator->refs.generator)));

    /* server name */
    FUNC13(mrb, env, FUNC8(shared->constants, H2O_MRUBY_LIT_SERVER_SOFTWARE),
                 FUNC8(shared->constants, H2O_MRUBY_LIT_SERVER_SOFTWARE_VALUE));

    /* h2o specific */
    FUNC13(mrb, env, FUNC8(shared->constants, H2O_MRUBY_LIT_H2O_REMAINING_DELEGATIONS),
                 FUNC10(generator->req->remaining_delegations));
    FUNC13(mrb, env, FUNC8(shared->constants, H2O_MRUBY_LIT_H2O_REMAINING_REPROCESSES),
                 FUNC10(generator->req->remaining_reprocesses));

    return env;
}