
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {int column; int line; } ;
struct TYPE_21__ {int column; int line; } ;
struct TYPE_22__ {int error; int problem_value; char* problem; int problem_offset; char* context; TYPE_1__ problem_mark; TYPE_2__ context_mark; } ;
typedef TYPE_3__ yaml_parser_t ;
typedef TYPE_3__ yaml_emitter_t ;
typedef TYPE_3__ yaml_document_t ;
typedef int parser ;
typedef int emitter ;
typedef int document ;
 int fprintf (int ,char*,...) ;
 int memset (TYPE_3__*,int ,int) ;
 int printf (char*,char*,char*) ;
 int stderr ;
 int stdin ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 int yaml_document_get_root_node (TYPE_3__*) ;
 int yaml_emitter_delete (TYPE_3__*) ;
 int yaml_emitter_dump (TYPE_3__*,TYPE_3__*) ;
 int yaml_emitter_initialize (TYPE_3__*) ;
 int yaml_emitter_set_canonical (TYPE_3__*,int) ;
 int yaml_emitter_set_output_file (TYPE_3__*,int ) ;
 int yaml_emitter_set_unicode (TYPE_3__*,int) ;
 int yaml_parser_delete (TYPE_3__*) ;
 int yaml_parser_initialize (TYPE_3__*) ;
 int yaml_parser_load (TYPE_3__*,TYPE_3__*) ;
 int yaml_parser_set_input_file (TYPE_3__*,int ) ;

int
main(int argc, char *argv[])
{
    int help = 0;
    int canonical = 0;
    int unicode = 0;
    int k;
    int done = 0;

    yaml_parser_t parser;
    yaml_emitter_t emitter;
    yaml_document_t document;



    memset(&parser, 0, sizeof(parser));
    memset(&emitter, 0, sizeof(emitter));
    memset(&document, 0, sizeof(document));



    for (k = 1; k < argc; k ++)
    {
        if (strcmp(argv[k], "-h") == 0
                || strcmp(argv[k], "--help") == 0) {
            help = 1;
        }

        else if (strcmp(argv[k], "-c") == 0
                || strcmp(argv[k], "--canonical") == 0) {
            canonical = 1;
        }

        else if (strcmp(argv[k], "-u") == 0
                || strcmp(argv[k], "--unicode") == 0) {
            unicode = 1;
        }

        else {
            fprintf(stderr, "Unrecognized option: %s\n"
                    "Try `%s --help` for more information.\n",
                    argv[k], argv[0]);
            return 1;
        }
    }



    if (help)
    {
        printf("%s [--canonical] [--unicode] <input >output\n"
                "or\n%s -h | --help\nReformat a YAML stream\n\nOptions:\n"
                "-h, --help\t\tdisplay this help and exit\n"
                "-c, --canonical\t\toutput in the canonical YAML format\n"
                "-u, --unicode\t\toutput unescaped non-ASCII characters\n",
                argv[0], argv[0]);
        return 0;
    }



    if (!yaml_parser_initialize(&parser))
        goto parser_error;

    if (!yaml_emitter_initialize(&emitter))
        goto emitter_error;



    yaml_parser_set_input_file(&parser, stdin);



    yaml_emitter_set_output_file(&emitter, stdout);

    yaml_emitter_set_canonical(&emitter, canonical);
    yaml_emitter_set_unicode(&emitter, unicode);



    while (!done)
    {


        if (!yaml_parser_load(&parser, &document))
            goto parser_error;



        if (!yaml_document_get_root_node(&document)) {
            done = 1;
        }



        if (!yaml_emitter_dump(&emitter, &document))
            goto emitter_error;
    }

    yaml_parser_delete(&parser);
    yaml_emitter_delete(&emitter);

    return 0;

parser_error:



    switch (parser.error)
    {
        case 132:
            fprintf(stderr, "Memory error: Not enough memory for parsing\n");
            break;

        case 130:
            if (parser.problem_value != -1) {
                fprintf(stderr, "Reader error: %s: #%X at %d\n", parser.problem,
                        parser.problem_value, parser.problem_offset);
            }
            else {
                fprintf(stderr, "Reader error: %s at %d\n", parser.problem,
                        parser.problem_offset);
            }
            break;

        case 129:
            if (parser.context) {
                fprintf(stderr, "Scanner error: %s at line %d, column %d\n"
                        "%s at line %d, column %d\n", parser.context,
                        parser.context_mark.line+1, parser.context_mark.column+1,
                        parser.problem, parser.problem_mark.line+1,
                        parser.problem_mark.column+1);
            }
            else {
                fprintf(stderr, "Scanner error: %s at line %d, column %d\n",
                        parser.problem, parser.problem_mark.line+1,
                        parser.problem_mark.column+1);
            }
            break;

        case 131:
            if (parser.context) {
                fprintf(stderr, "Parser error: %s at line %d, column %d\n"
                        "%s at line %d, column %d\n", parser.context,
                        parser.context_mark.line+1, parser.context_mark.column+1,
                        parser.problem, parser.problem_mark.line+1,
                        parser.problem_mark.column+1);
            }
            else {
                fprintf(stderr, "Parser error: %s at line %d, column %d\n",
                        parser.problem, parser.problem_mark.line+1,
                        parser.problem_mark.column+1);
            }
            break;

        case 134:
            if (parser.context) {
                fprintf(stderr, "Composer error: %s at line %d, column %d\n"
                        "%s at line %d, column %d\n", parser.context,
                        parser.context_mark.line+1, parser.context_mark.column+1,
                        parser.problem, parser.problem_mark.line+1,
                        parser.problem_mark.column+1);
            }
            else {
                fprintf(stderr, "Composer error: %s at line %d, column %d\n",
                        parser.problem, parser.problem_mark.line+1,
                        parser.problem_mark.column+1);
            }
            break;

        default:

            fprintf(stderr, "Internal error\n");
            break;
    }

    yaml_parser_delete(&parser);
    yaml_emitter_delete(&emitter);

    return 1;

emitter_error:



    switch (emitter.error)
    {
        case 132:
            fprintf(stderr, "Memory error: Not enough memory for emitting\n");
            break;

        case 128:
            fprintf(stderr, "Writer error: %s\n", emitter.problem);
            break;

        case 133:
            fprintf(stderr, "Emitter error: %s\n", emitter.problem);
            break;

        default:

            fprintf(stderr, "Internal error\n");
            break;
    }

    yaml_parser_delete(&parser);
    yaml_emitter_delete(&emitter);

    return 1;
}
