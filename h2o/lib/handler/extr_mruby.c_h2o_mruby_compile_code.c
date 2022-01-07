
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct mrb_parser_state {scalar_t__ nerr; TYPE_2__* error_buffer; } ;
struct RProc {int dummy; } ;
struct TYPE_12__ {int capture_errors; int lineno; } ;
typedef TYPE_3__ mrbc_context ;
typedef int mrb_state ;
struct TYPE_10__ {scalar_t__ len; int base; } ;
struct TYPE_13__ {int lineno; TYPE_1__ source; int * path; } ;
typedef TYPE_4__ h2o_mruby_config_vars_t ;
struct TYPE_11__ {int lineno; char* message; int column; } ;


 int H2O_MRUBY_MODULE_NAME ;
 int h2o_fatal (char*,int ) ;
 scalar_t__ h2o_str_at_position (char*,int ,scalar_t__,int,int ) ;
 struct RProc* mrb_generate_code (int *,struct mrb_parser_state*) ;
 struct mrb_parser_state* mrb_parse_nstring (int *,int ,int,TYPE_3__*) ;
 int mrb_parser_free (struct mrb_parser_state*) ;
 int mrbc_context_free (int *,TYPE_3__*) ;
 TYPE_3__* mrbc_context_new (int *) ;
 int mrbc_filename (int *,TYPE_3__*,int *) ;
 int snprintf (char*,int,char*,int,char*) ;
 int strcat (char*,char*) ;
 int strlen (char*) ;

struct RProc *h2o_mruby_compile_code(mrb_state *mrb, h2o_mruby_config_vars_t *config, char *errbuf)
{
    mrbc_context *cxt;
    struct mrb_parser_state *parser;
    struct RProc *proc = ((void*)0);


    if ((cxt = mrbc_context_new(mrb)) == ((void*)0)) {
        h2o_fatal("%s: no memory\n", H2O_MRUBY_MODULE_NAME);
    }
    if (config->path != ((void*)0))
        mrbc_filename(mrb, cxt, config->path);
    cxt->capture_errors = 1;
    cxt->lineno = config->lineno;
    if ((parser = mrb_parse_nstring(mrb, config->source.base, (int)config->source.len, cxt)) == ((void*)0)) {
        h2o_fatal("%s: no memory\n", H2O_MRUBY_MODULE_NAME);
    }

    if (parser->nerr != 0) {
        if (errbuf == ((void*)0)) {
            h2o_fatal("%s: internal error (unexpected state)\n", H2O_MRUBY_MODULE_NAME);
        }
        snprintf(errbuf, 256, "line %d:%s", parser->error_buffer[0].lineno, parser->error_buffer[0].message);
        strcat(errbuf, "\n\n");
        if (h2o_str_at_position(errbuf + strlen(errbuf), config->source.base, config->source.len,
                                parser->error_buffer[0].lineno - config->lineno + 1, parser->error_buffer[0].column) != 0) {

            errbuf[strlen(errbuf) - 2] = '\0';
        }
        goto Exit;
    }

    if ((proc = mrb_generate_code(mrb, parser)) == ((void*)0)) {
        h2o_fatal("%s: internal error (mrb_generate_code failed)\n", H2O_MRUBY_MODULE_NAME);
    }

Exit:
    mrb_parser_free(parser);
    mrbc_context_free(mrb, cxt);
    return proc;
}
