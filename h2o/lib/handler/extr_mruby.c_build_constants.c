
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int mrb_value ;
struct TYPE_19__ {int kernel_module; } ;
typedef TYPE_2__ mrb_state ;
typedef int mrb_int ;
struct TYPE_18__ {scalar_t__ len; char const* base; } ;
struct TYPE_20__ {TYPE_1__ buf; } ;
typedef TYPE_3__ h2o_token_t ;
typedef int h2o_mem_pool_t ;
struct TYPE_21__ {char const* base; size_t len; } ;
typedef TYPE_4__ h2o_iovec_t ;


 int FREEZE_STRING (int ) ;
 int H2O_MAX_TOKENS ;
 int H2O_MRUBY_CODE_CORE ;
 int H2O_MRUBY_LIT_CONTENT_LENGTH ;
 int H2O_MRUBY_LIT_H2O_REMAINING_DELEGATIONS ;
 int H2O_MRUBY_LIT_H2O_REMAINING_REPROCESSES ;
 int H2O_MRUBY_LIT_PATH_INFO ;
 int H2O_MRUBY_LIT_QUERY_STRING ;
 int H2O_MRUBY_LIT_RACK_EARLY_HINTS ;
 int H2O_MRUBY_LIT_RACK_ERRORS ;
 int H2O_MRUBY_LIT_RACK_HIJACK_ ;
 int H2O_MRUBY_LIT_RACK_INPUT ;
 int H2O_MRUBY_LIT_RACK_MULTIPROCESS ;
 int H2O_MRUBY_LIT_RACK_MULTITHREAD ;
 int H2O_MRUBY_LIT_RACK_RUN_ONCE ;
 int H2O_MRUBY_LIT_RACK_URL_SCHEME ;
 int H2O_MRUBY_LIT_REMOTE_ADDR ;
 int H2O_MRUBY_LIT_REMOTE_PORT ;
 int H2O_MRUBY_LIT_REMOTE_USER ;
 int H2O_MRUBY_LIT_REQUEST_METHOD ;
 int H2O_MRUBY_LIT_SCRIPT_NAME ;
 int H2O_MRUBY_LIT_SERVER_ADDR ;
 int H2O_MRUBY_LIT_SERVER_NAME ;
 int H2O_MRUBY_LIT_SERVER_PORT ;
 int H2O_MRUBY_LIT_SERVER_PROTOCOL ;
 int H2O_MRUBY_LIT_SERVER_SOFTWARE ;
 int H2O_MRUBY_LIT_SERVER_SOFTWARE_VALUE ;
 int H2O_MRUBY_NUM_CONSTANTS ;
 int H2O_MRUBY_PROC_EACH_TO_ARRAY ;
 TYPE_3__ const* H2O_TOKEN_CONTENT_TYPE ;
 int SET_LITERAL (int ,char*) ;
 int SET_STRING (int ,int ) ;
 TYPE_4__ convert_header_name_to_env (int *,char const*,scalar_t__) ;
 TYPE_3__* h2o__tokens ;
 int h2o_mem_clear_pool (int *) ;
 int h2o_mem_init_pool (int *) ;
 int h2o_mruby_assert (TYPE_2__*) ;
 int h2o_mruby_eval_expr_location (TYPE_2__*,int ,char*,int) ;
 int h2o_mruby_new_str (TYPE_2__*,char const*,size_t) ;
 int mrb_ary_new_capa (TYPE_2__*,int ) ;
 int mrb_ary_set (TYPE_2__*,int ,int,int ) ;
 int mrb_funcall (TYPE_2__*,int ,char*,int ) ;
 int mrb_gc_arena_restore (TYPE_2__*,int) ;
 int mrb_gc_arena_save (TYPE_2__*) ;
 int mrb_nil_value () ;
 int mrb_obj_value (int ) ;
 int mrb_str_new_lit (TYPE_2__*,char*) ;
 scalar_t__ mrb_string_p (int ) ;

__attribute__((used)) static mrb_value build_constants(mrb_state *mrb, const char *server_name, size_t server_name_len)
{
    mrb_value ary = mrb_ary_new_capa(mrb, H2O_MRUBY_NUM_CONSTANTS);
    mrb_int i;

    int gc_arena = mrb_gc_arena_save(mrb);

    {
        h2o_mem_pool_t pool;
        h2o_mem_init_pool(&pool);
        for (i = 0; i != H2O_MAX_TOKENS; ++i) {
            const h2o_token_t *token = h2o__tokens + i;
            if (token->buf.len == 0)
                continue;
            mrb_value lit = h2o_mruby_new_str(mrb, token->buf.base, token->buf.len);
            FREEZE_STRING(lit);
            mrb_ary_set(mrb, ary, i, lit);
        }
        for (; i != H2O_MAX_TOKENS * 2; ++i) {
            const h2o_token_t *token = h2o__tokens + i - H2O_MAX_TOKENS;
            mrb_value lit = mrb_nil_value();
            if (token == H2O_TOKEN_CONTENT_TYPE) {
                lit = mrb_str_new_lit(mrb, "CONTENT_TYPE");
            } else if (token->buf.len != 0) {
                h2o_iovec_t n = convert_header_name_to_env(&pool, token->buf.base, token->buf.len);
                lit = h2o_mruby_new_str(mrb, n.base, n.len);
            }
            if (mrb_string_p(lit)) {
                FREEZE_STRING(lit);
                mrb_ary_set(mrb, ary, i, lit);
            }
        }
        h2o_mem_clear_pool(&pool);
    }
    do { mrb_value lit = (mrb_str_new_lit(mrb, "REQUEST_METHOD")); FREEZE_STRING(lit); mrb_ary_set(mrb, ary, H2O_MRUBY_LIT_REQUEST_METHOD, lit); } while (0);
    do { mrb_value lit = (mrb_str_new_lit(mrb, "SCRIPT_NAME")); FREEZE_STRING(lit); mrb_ary_set(mrb, ary, H2O_MRUBY_LIT_SCRIPT_NAME, lit); } while (0);
    do { mrb_value lit = (mrb_str_new_lit(mrb, "PATH_INFO")); FREEZE_STRING(lit); mrb_ary_set(mrb, ary, H2O_MRUBY_LIT_PATH_INFO, lit); } while (0);
    do { mrb_value lit = (mrb_str_new_lit(mrb, "QUERY_STRING")); FREEZE_STRING(lit); mrb_ary_set(mrb, ary, H2O_MRUBY_LIT_QUERY_STRING, lit); } while (0);
    do { mrb_value lit = (mrb_str_new_lit(mrb, "SERVER_NAME")); FREEZE_STRING(lit); mrb_ary_set(mrb, ary, H2O_MRUBY_LIT_SERVER_NAME, lit); } while (0);
    do { mrb_value lit = (mrb_str_new_lit(mrb, "SERVER_ADDR")); FREEZE_STRING(lit); mrb_ary_set(mrb, ary, H2O_MRUBY_LIT_SERVER_ADDR, lit); } while (0);
    do { mrb_value lit = (mrb_str_new_lit(mrb, "SERVER_PORT")); FREEZE_STRING(lit); mrb_ary_set(mrb, ary, H2O_MRUBY_LIT_SERVER_PORT, lit); } while (0);
    do { mrb_value lit = (mrb_str_new_lit(mrb, "SERVER_PROTOCOL")); FREEZE_STRING(lit); mrb_ary_set(mrb, ary, H2O_MRUBY_LIT_SERVER_PROTOCOL, lit); } while (0);
    do { mrb_value lit = (mrb_str_new_lit(mrb, "CONTENT_LENGTH")); FREEZE_STRING(lit); mrb_ary_set(mrb, ary, H2O_MRUBY_LIT_CONTENT_LENGTH, lit); } while (0);
    do { mrb_value lit = (mrb_str_new_lit(mrb, "REMOTE_ADDR")); FREEZE_STRING(lit); mrb_ary_set(mrb, ary, H2O_MRUBY_LIT_REMOTE_ADDR, lit); } while (0);
    do { mrb_value lit = (mrb_str_new_lit(mrb, "REMOTE_PORT")); FREEZE_STRING(lit); mrb_ary_set(mrb, ary, H2O_MRUBY_LIT_REMOTE_PORT, lit); } while (0);
    do { mrb_value lit = (mrb_str_new_lit(mrb, "REMOTE_USER")); FREEZE_STRING(lit); mrb_ary_set(mrb, ary, H2O_MRUBY_LIT_REMOTE_USER, lit); } while (0);
    do { mrb_value lit = (mrb_str_new_lit(mrb, "rack.url_scheme")); FREEZE_STRING(lit); mrb_ary_set(mrb, ary, H2O_MRUBY_LIT_RACK_URL_SCHEME, lit); } while (0);
    do { mrb_value lit = (mrb_str_new_lit(mrb, "rack.multithread")); FREEZE_STRING(lit); mrb_ary_set(mrb, ary, H2O_MRUBY_LIT_RACK_MULTITHREAD, lit); } while (0);
    do { mrb_value lit = (mrb_str_new_lit(mrb, "rack.multiprocess")); FREEZE_STRING(lit); mrb_ary_set(mrb, ary, H2O_MRUBY_LIT_RACK_MULTIPROCESS, lit); } while (0);
    do { mrb_value lit = (mrb_str_new_lit(mrb, "rack.run_once")); FREEZE_STRING(lit); mrb_ary_set(mrb, ary, H2O_MRUBY_LIT_RACK_RUN_ONCE, lit); } while (0);
    do { mrb_value lit = (mrb_str_new_lit(mrb, "rack.hijack?")); FREEZE_STRING(lit); mrb_ary_set(mrb, ary, H2O_MRUBY_LIT_RACK_HIJACK_, lit); } while (0);
    do { mrb_value lit = (mrb_str_new_lit(mrb, "rack.input")); FREEZE_STRING(lit); mrb_ary_set(mrb, ary, H2O_MRUBY_LIT_RACK_INPUT, lit); } while (0);
    do { mrb_value lit = (mrb_str_new_lit(mrb, "rack.errors")); FREEZE_STRING(lit); mrb_ary_set(mrb, ary, H2O_MRUBY_LIT_RACK_ERRORS, lit); } while (0);
    do { mrb_value lit = (mrb_str_new_lit(mrb, "rack.early_hints")); FREEZE_STRING(lit); mrb_ary_set(mrb, ary, H2O_MRUBY_LIT_RACK_EARLY_HINTS, lit); } while (0);
    do { mrb_value lit = (mrb_str_new_lit(mrb, "SERVER_SOFTWARE")); FREEZE_STRING(lit); mrb_ary_set(mrb, ary, H2O_MRUBY_LIT_SERVER_SOFTWARE, lit); } while (0);
    do { mrb_value lit = (mrb_str_new_lit(mrb, "h2o.remaining_delegations")); FREEZE_STRING(lit); mrb_ary_set(mrb, ary, H2O_MRUBY_LIT_H2O_REMAINING_DELEGATIONS, lit); } while (0);
    do { mrb_value lit = (mrb_str_new_lit(mrb, "h2o.remaining_reprocesses")); FREEZE_STRING(lit); mrb_ary_set(mrb, ary, H2O_MRUBY_LIT_H2O_REMAINING_REPROCESSES, lit); } while (0);
    do { mrb_value lit = (h2o_mruby_new_str(mrb, server_name, server_name_len)); FREEZE_STRING(lit); mrb_ary_set(mrb, ary, H2O_MRUBY_LIT_SERVER_SOFTWARE_VALUE, lit); } while (0);




    h2o_mruby_eval_expr_location(mrb, H2O_MRUBY_CODE_CORE, "(h2o)lib/handler/mruby/embedded/core.rb", 1);
    h2o_mruby_assert(mrb);

    mrb_ary_set(mrb, ary, H2O_MRUBY_PROC_EACH_TO_ARRAY,
                mrb_funcall(mrb, mrb_obj_value(mrb->kernel_module), "_h2o_proc_each_to_array", 0));
    h2o_mruby_assert(mrb);

    mrb_gc_arena_restore(mrb, gc_arena);
    return ary;
}
