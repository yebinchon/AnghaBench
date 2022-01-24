#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct mrb_parser_state {scalar_t__ nerr; TYPE_2__* error_buffer; } ;
struct RProc {int dummy; } ;
struct TYPE_12__ {int capture_errors; int lineno; } ;
typedef  TYPE_3__ mrbc_context ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_10__ {scalar_t__ len; int /*<<< orphan*/  base; } ;
struct TYPE_13__ {int lineno; TYPE_1__ source; int /*<<< orphan*/ * path; } ;
typedef  TYPE_4__ h2o_mruby_config_vars_t ;
struct TYPE_11__ {int lineno; char* message; int /*<<< orphan*/  column; } ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_MRUBY_MODULE_NAME ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 struct RProc* FUNC2 (int /*<<< orphan*/ *,struct mrb_parser_state*) ; 
 struct mrb_parser_state* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct mrb_parser_state*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char*) ; 

struct RProc *FUNC11(mrb_state *mrb, h2o_mruby_config_vars_t *config, char *errbuf)
{
    mrbc_context *cxt;
    struct mrb_parser_state *parser;
    struct RProc *proc = NULL;

    /* parse */
    if ((cxt = FUNC6(mrb)) == NULL) {
        FUNC0("%s: no memory\n", H2O_MRUBY_MODULE_NAME);
    }
    if (config->path != NULL)
        FUNC7(mrb, cxt, config->path);
    cxt->capture_errors = 1;
    cxt->lineno = config->lineno;
    if ((parser = FUNC3(mrb, config->source.base, (int)config->source.len, cxt)) == NULL) {
        FUNC0("%s: no memory\n", H2O_MRUBY_MODULE_NAME);
    }
    /* return erro if errbuf is supplied, or abort */
    if (parser->nerr != 0) {
        if (errbuf == NULL) {
            FUNC0("%s: internal error (unexpected state)\n", H2O_MRUBY_MODULE_NAME);
        }
        FUNC8(errbuf, 256, "line %d:%s", parser->error_buffer[0].lineno, parser->error_buffer[0].message);
        FUNC9(errbuf, "\n\n");
        if (FUNC1(errbuf + FUNC10(errbuf), config->source.base, config->source.len,
                                parser->error_buffer[0].lineno - config->lineno + 1, parser->error_buffer[0].column) != 0) {
            /* remove trailing "\n\n" in case we failed to append the source code at the error location */
            errbuf[FUNC10(errbuf) - 2] = '\0';
        }
        goto Exit;
    }
    /* generate code */
    if ((proc = FUNC2(mrb, parser)) == NULL) {
        FUNC0("%s: internal error (mrb_generate_code failed)\n", H2O_MRUBY_MODULE_NAME);
    }

Exit:
    FUNC4(parser);
    FUNC5(mrb, cxt);
    return proc;
}