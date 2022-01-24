#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  scheme; int /*<<< orphan*/  rack_input; int /*<<< orphan*/  rack_errors; int /*<<< orphan*/  remaining_reprocesses; int /*<<< orphan*/  remaining_delegations; int /*<<< orphan*/  server_protocol; int /*<<< orphan*/  server_port; int /*<<< orphan*/  server_name; int /*<<< orphan*/  server_addr; int /*<<< orphan*/  script_name; int /*<<< orphan*/  method; int /*<<< orphan*/  remote_port; int /*<<< orphan*/  remote_addr; int /*<<< orphan*/  query_string; int /*<<< orphan*/  path_info; int /*<<< orphan*/  http_host; } ;
struct st_mruby_env_foreach_data_t {TYPE_3__* subreq; TYPE_2__* ctx; TYPE_1__ env; } ;
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_12__ {int /*<<< orphan*/ * exc; } ;
typedef  TYPE_4__ mrb_state ;
typedef  int mrb_int ;
struct TYPE_13__ {int size; void** entries; } ;
struct TYPE_14__ {TYPE_6__ env; int /*<<< orphan*/  pool; int /*<<< orphan*/  content_length; } ;
struct TYPE_11__ {TYPE_8__ super; } ;
struct TYPE_10__ {int /*<<< orphan*/  shared; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int const FUNC4 (int /*<<< orphan*/ ) ; 
 char const* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ *,char const*,int const) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_6__*,int) ; 
 int /*<<< orphan*/  handle_header_env_key ; 
 scalar_t__ FUNC10 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static int FUNC14(mrb_state *mrb, mrb_value key, mrb_value value, void *_data)
{
    struct st_mruby_env_foreach_data_t *data = _data;
    key = FUNC7(mrb, key);
    if (mrb->exc != NULL)
        return -1;

#define RETRIEVE_ENV(val, stringify, numify)                                                                                       \
    do {                                                                                                                           \
        val = value;                                                                                                               \
        if (!mrb_nil_p(val)) {                                                                                                     \
            if (stringify)                                                                                                         \
                val = h2o_mruby_to_str(mrb, val);                                                                                  \
            if (numify)                                                                                                            \
                val = h2o_mruby_to_int(mrb, val);                                                                                  \
            if (mrb->exc != NULL)                                                                                                  \
                return -1;                                                                                                         \
        }                                                                                                                          \
    } while (0)
#define RETRIEVE_ENV_OBJ(val) RETRIEVE_ENV(val, 0, 0);
#define RETRIEVE_ENV_STR(val) RETRIEVE_ENV(val, 1, 0);
#define RETRIEVE_ENV_NUM(val) RETRIEVE_ENV(val, 0, 1);

#define COND0(str, lit, pos) (sizeof(lit) - 1 <= (pos) || (str)[pos] == (lit)[pos])
#define COND1(str, lit, pos) (COND0(str, lit, pos) && COND0(str, lit, pos + 1) && COND0(str, lit, pos + 2))
#define COND2(str, lit, pos) (COND1(str, lit, pos) && COND1(str, lit, pos + 3) && COND1(str, lit, pos + 6))
#define COND(str, lit) (COND2(str, lit, 0) && COND2(str, lit, 9) && COND2(str, lit, 18))
#define CHECK_KEY(lit) ((sizeof(lit) - 1) == keystr_len && COND(keystr, lit))

    const char *keystr = FUNC5(key);
    const mrb_int keystr_len = FUNC4(key);

    if (CHECK_KEY("CONTENT_LENGTH")) {
        mrb_value content_length = FUNC13();
        RETRIEVE_ENV_NUM(content_length);
        if (!FUNC12(content_length))
            data->subreq->super.content_length = FUNC11(content_length);
    } else if (CHECK_KEY("HTTP_HOST")) {
        RETRIEVE_ENV_STR(data->env.http_host);
    } else if (CHECK_KEY("PATH_INFO")) {
        RETRIEVE_ENV_STR(data->env.path_info);
    } else if (CHECK_KEY("QUERY_STRING")) {
        RETRIEVE_ENV_STR(data->env.query_string);
    } else if (CHECK_KEY("REMOTE_ADDR")) {
        RETRIEVE_ENV_STR(data->env.remote_addr);
    } else if (CHECK_KEY("REMOTE_PORT")) {
        RETRIEVE_ENV_STR(data->env.remote_port);
    } else if (CHECK_KEY("REQUEST_METHOD")) {
        RETRIEVE_ENV_STR(data->env.method);
    } else if (CHECK_KEY("SCRIPT_NAME")) {
        RETRIEVE_ENV_STR(data->env.script_name);
    } else if (CHECK_KEY("SERVER_ADDR")) {
        RETRIEVE_ENV_STR(data->env.server_addr);
    } else if (CHECK_KEY("SERVER_NAME")) {
        RETRIEVE_ENV_STR(data->env.server_name);
    } else if (CHECK_KEY("SERVER_PORT")) {
        RETRIEVE_ENV_STR(data->env.server_port);
    } else if (CHECK_KEY("SERVER_PROTOCOL")) {
        RETRIEVE_ENV_STR(data->env.server_protocol);
    } else if (CHECK_KEY("SERVER_SOFTWARE")) {
    } else if (CHECK_KEY("h2o.remaining_delegations")) {
        RETRIEVE_ENV_NUM(data->env.remaining_delegations);
    } else if (CHECK_KEY("h2o.remaining_reprocesses")) {
        RETRIEVE_ENV_NUM(data->env.remaining_reprocesses);
    } else if (CHECK_KEY("rack.errors")) {
        RETRIEVE_ENV_OBJ(data->env.rack_errors);
    } else if (CHECK_KEY("rack.hijack?")) {
    } else if (CHECK_KEY("rack.input")) {
        RETRIEVE_ENV_OBJ(data->env.rack_input);
    } else if (CHECK_KEY("rack.multiprocess")) {
    } else if (CHECK_KEY("rack.multithread")) {
    } else if (CHECK_KEY("rack.run_once")) {
    } else if (CHECK_KEY("rack.url_scheme")) {
        RETRIEVE_ENV_STR(data->env.scheme);
    } else if (keystr_len >= 5 && FUNC10(keystr, "HTTP_", 5) == 0) {
        mrb_value http_header = FUNC13();
        RETRIEVE_ENV_STR(http_header);
        if (!FUNC12(http_header))
            FUNC6(data->ctx->shared, key, http_header, handle_header_env_key, &data->subreq->super);
    } else if (keystr_len != 0) {
        /* set to req->env */
        mrb_value reqenv = FUNC13();
        RETRIEVE_ENV_STR(reqenv);
        if (!FUNC12(reqenv)) {
            FUNC9(&data->subreq->super.pool, &data->subreq->super.env, data->subreq->super.env.size + 2);
            data->subreq->super.env.entries[data->subreq->super.env.size] =
                FUNC8(&data->subreq->super.pool, keystr, keystr_len);
            data->subreq->super.env.entries[data->subreq->super.env.size + 1] =
                FUNC8(&data->subreq->super.pool, FUNC5(reqenv), FUNC4(reqenv));
            data->subreq->super.env.size += 2;
        }
    }

#undef RETRIEVE_ENV
#undef RETRIEVE_ENV_OBJ
#undef RETRIEVE_ENV_STR
#undef RETRIEVE_ENV_NUM
#undef COND0
#undef COND1
#undef COND2
#undef COND
#undef CHECK_KEY

    return 0;
}