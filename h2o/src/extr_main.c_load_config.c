
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {char* filename; scalar_t__ line; } ;
typedef TYPE_2__ yoml_t ;
struct TYPE_16__ {char* filename; } ;
typedef TYPE_3__ yoml_parse_args_t ;
struct TYPE_14__ {scalar_t__ line; } ;
struct TYPE_17__ {char* problem; TYPE_1__ problem_mark; } ;
typedef TYPE_4__ yaml_parser_t ;
typedef int FILE ;


 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*,...) ;
 int stderr ;
 char* strerror (int ) ;
 int yaml_parser_delete (TYPE_4__*) ;
 int yaml_parser_initialize (TYPE_4__*) ;
 int yaml_parser_set_input_file (TYPE_4__*,int *) ;
 TYPE_2__* yoml_parse_document (TYPE_4__*,int *,TYPE_3__*) ;

__attribute__((used)) static yoml_t *load_config(yoml_parse_args_t *parse_args, yoml_t *source)
{
    FILE *fp;
    yaml_parser_t parser;
    yoml_t *yoml;

    if ((fp = fopen(parse_args->filename, "rb")) == ((void*)0)) {
        fprintf(stderr, "could not open configuration file %s: %s\n", parse_args->filename, strerror(errno));
        return ((void*)0);
    }

    yaml_parser_initialize(&parser);
    yaml_parser_set_input_file(&parser, fp);

    yoml = yoml_parse_document(&parser, ((void*)0), parse_args);

    if (yoml == ((void*)0)) {
        fprintf(stderr, "failed to parse configuration file %s line %d", parse_args->filename, (int)parser.problem_mark.line + 1);
        if (source != ((void*)0)) {
            fprintf(stderr, " (included from file %s line %d)", source->filename, (int)source->line + 1);
        }
        fprintf(stderr, ": %s\n", parser.problem);
    }

    yaml_parser_delete(&parser);

    fclose(fp);

    return yoml;
}
