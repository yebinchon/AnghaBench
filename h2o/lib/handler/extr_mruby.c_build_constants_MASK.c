#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_19__ {int /*<<< orphan*/  kernel_module; } ;
typedef  TYPE_2__ mrb_state ;
typedef  int mrb_int ;
struct TYPE_18__ {scalar_t__ len; char const* base; } ;
struct TYPE_20__ {TYPE_1__ buf; } ;
typedef  TYPE_3__ h2o_token_t ;
typedef  int /*<<< orphan*/  h2o_mem_pool_t ;
struct TYPE_21__ {char const* base; size_t len; } ;
typedef  TYPE_4__ h2o_iovec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int H2O_MAX_TOKENS ; 
 int /*<<< orphan*/  H2O_MRUBY_CODE_CORE ; 
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
 int /*<<< orphan*/  H2O_MRUBY_LIT_REMOTE_USER ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_REQUEST_METHOD ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_SCRIPT_NAME ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_SERVER_ADDR ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_SERVER_NAME ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_SERVER_PORT ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_SERVER_PROTOCOL ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_SERVER_SOFTWARE ; 
 int /*<<< orphan*/  H2O_MRUBY_LIT_SERVER_SOFTWARE_VALUE ; 
 int /*<<< orphan*/  H2O_MRUBY_NUM_CONSTANTS ; 
 int H2O_MRUBY_PROC_EACH_TO_ARRAY ; 
 TYPE_3__ const* H2O_TOKEN_CONTENT_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ FUNC3 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 TYPE_3__* h2o__tokens ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 
 int FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value FUNC18(mrb_state *mrb, const char *server_name, size_t server_name_len)
{
    mrb_value ary = FUNC9(mrb, H2O_MRUBY_NUM_CONSTANTS);
    mrb_int i;

    int gc_arena = FUNC13(mrb);

    {
        h2o_mem_pool_t pool;
        FUNC5(&pool);
        for (i = 0; i != H2O_MAX_TOKENS; ++i) {
            const h2o_token_t *token = h2o__tokens + i;
            if (token->buf.len == 0)
                continue;
            mrb_value lit = FUNC8(mrb, token->buf.base, token->buf.len);
            FUNC0(lit);
            FUNC10(mrb, ary, i, lit);
        }
        for (; i != H2O_MAX_TOKENS * 2; ++i) {
            const h2o_token_t *token = h2o__tokens + i - H2O_MAX_TOKENS;
            mrb_value lit = FUNC14();
            if (token == H2O_TOKEN_CONTENT_TYPE) {
                lit = FUNC16(mrb, "CONTENT_TYPE");
            } else if (token->buf.len != 0) {
                h2o_iovec_t n = FUNC3(&pool, token->buf.base, token->buf.len);
                lit = FUNC8(mrb, n.base, n.len);
            }
            if (FUNC17(lit)) {
                FUNC0(lit);
                FUNC10(mrb, ary, i, lit);
            }
        }
        FUNC4(&pool);
    }

#define SET_STRING(idx, value)                                                                                                     \
    do {                                                                                                                           \
        mrb_value lit = (value);                                                                                                   \
        FREEZE_STRING(lit);                                                                                                        \
        mrb_ary_set(mrb, ary, idx, lit);                                                                                           \
    } while (0)
#define SET_LITERAL(idx, str) SET_STRING(idx, mrb_str_new_lit(mrb, str))

    SET_LITERAL(H2O_MRUBY_LIT_REQUEST_METHOD, "REQUEST_METHOD");
    SET_LITERAL(H2O_MRUBY_LIT_SCRIPT_NAME, "SCRIPT_NAME");
    SET_LITERAL(H2O_MRUBY_LIT_PATH_INFO, "PATH_INFO");
    SET_LITERAL(H2O_MRUBY_LIT_QUERY_STRING, "QUERY_STRING");
    SET_LITERAL(H2O_MRUBY_LIT_SERVER_NAME, "SERVER_NAME");
    SET_LITERAL(H2O_MRUBY_LIT_SERVER_ADDR, "SERVER_ADDR");
    SET_LITERAL(H2O_MRUBY_LIT_SERVER_PORT, "SERVER_PORT");
    SET_LITERAL(H2O_MRUBY_LIT_SERVER_PROTOCOL, "SERVER_PROTOCOL");
    SET_LITERAL(H2O_MRUBY_LIT_CONTENT_LENGTH, "CONTENT_LENGTH");
    SET_LITERAL(H2O_MRUBY_LIT_REMOTE_ADDR, "REMOTE_ADDR");
    SET_LITERAL(H2O_MRUBY_LIT_REMOTE_PORT, "REMOTE_PORT");
    SET_LITERAL(H2O_MRUBY_LIT_REMOTE_USER, "REMOTE_USER");
    SET_LITERAL(H2O_MRUBY_LIT_RACK_URL_SCHEME, "rack.url_scheme");
    SET_LITERAL(H2O_MRUBY_LIT_RACK_MULTITHREAD, "rack.multithread");
    SET_LITERAL(H2O_MRUBY_LIT_RACK_MULTIPROCESS, "rack.multiprocess");
    SET_LITERAL(H2O_MRUBY_LIT_RACK_RUN_ONCE, "rack.run_once");
    SET_LITERAL(H2O_MRUBY_LIT_RACK_HIJACK_, "rack.hijack?");
    SET_LITERAL(H2O_MRUBY_LIT_RACK_INPUT, "rack.input");
    SET_LITERAL(H2O_MRUBY_LIT_RACK_ERRORS, "rack.errors");
    SET_LITERAL(H2O_MRUBY_LIT_RACK_EARLY_HINTS, "rack.early_hints");
    SET_LITERAL(H2O_MRUBY_LIT_SERVER_SOFTWARE, "SERVER_SOFTWARE");
    SET_LITERAL(H2O_MRUBY_LIT_H2O_REMAINING_DELEGATIONS, "h2o.remaining_delegations");
    SET_LITERAL(H2O_MRUBY_LIT_H2O_REMAINING_REPROCESSES, "h2o.remaining_reprocesses");
    SET_STRING(H2O_MRUBY_LIT_SERVER_SOFTWARE_VALUE, FUNC8(mrb, server_name, server_name_len));

#undef SET_LITERAL
#undef SET_STRING

    FUNC7(mrb, H2O_MRUBY_CODE_CORE, "(h2o)lib/handler/mruby/embedded/core.rb", 1);
    FUNC6(mrb);

    FUNC10(mrb, ary, H2O_MRUBY_PROC_EACH_TO_ARRAY,
                FUNC11(mrb, FUNC15(mrb->kernel_module), "_h2o_proc_each_to_array", 0));
    FUNC6(mrb);

    FUNC12(mrb, gc_arena);
    return ary;
}