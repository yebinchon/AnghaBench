#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  column; int /*<<< orphan*/  line; } ;
struct TYPE_21__ {int /*<<< orphan*/  column; int /*<<< orphan*/  line; } ;
struct TYPE_22__ {int error; int problem_value; char* problem; int problem_offset; char* context; TYPE_1__ problem_mark; TYPE_2__ context_mark; } ;
typedef  TYPE_3__ yaml_parser_t ;
typedef  TYPE_3__ yaml_emitter_t ;
typedef  TYPE_3__ yaml_document_t ;
typedef  int /*<<< orphan*/  parser ;
typedef  int /*<<< orphan*/  emitter ;
typedef  int /*<<< orphan*/  document ;

/* Variables and functions */
#define  YAML_COMPOSER_ERROR 134 
#define  YAML_EMITTER_ERROR 133 
#define  YAML_MEMORY_ERROR 132 
#define  YAML_PARSER_ERROR 131 
#define  YAML_READER_ERROR 130 
#define  YAML_SCANNER_ERROR 129 
#define  YAML_WRITER_ERROR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ) ; 

int
FUNC15(int argc, char *argv[])
{
    int help = 0;
    int canonical = 0;
    int unicode = 0;
    int k;
    int done = 0;

    yaml_parser_t parser;
    yaml_emitter_t emitter;
    yaml_document_t document;

    /* Clear the objects. */

    FUNC1(&parser, 0, sizeof(parser));
    FUNC1(&emitter, 0, sizeof(emitter));
    FUNC1(&document, 0, sizeof(document));

    /* Analyze command line options. */

    for (k = 1; k < argc; k ++)
    {
        if (FUNC3(argv[k], "-h") == 0
                || FUNC3(argv[k], "--help") == 0) {
            help = 1;
        }

        else if (FUNC3(argv[k], "-c") == 0
                || FUNC3(argv[k], "--canonical") == 0) {
            canonical = 1;
        }

        else if (FUNC3(argv[k], "-u") == 0
                || FUNC3(argv[k], "--unicode") == 0) {
            unicode = 1;
        }

        else {
            FUNC0(stderr, "Unrecognized option: %s\n"
                    "Try `%s --help` for more information.\n",
                    argv[k], argv[0]);
            return 1;
        }
    }

    /* Display the help string. */

    if (help)
    {
        FUNC2("%s [--canonical] [--unicode] <input >output\n"
                "or\n%s -h | --help\nReformat a YAML stream\n\nOptions:\n"
                "-h, --help\t\tdisplay this help and exit\n"
                "-c, --canonical\t\toutput in the canonical YAML format\n"
                "-u, --unicode\t\toutput unescaped non-ASCII characters\n",
                argv[0], argv[0]);
        return 0;
    }

    /* Initialize the parser and emitter objects. */

    if (!FUNC12(&parser))
        goto parser_error;

    if (!FUNC7(&emitter))
        goto emitter_error;

    /* Set the parser parameters. */

    FUNC14(&parser, stdin);

    /* Set the emitter parameters. */

    FUNC9(&emitter, stdout);

    FUNC8(&emitter, canonical);
    FUNC10(&emitter, unicode);

    /* The main loop. */

    while (!done)
    {
        /* Get the next event. */

        if (!FUNC13(&parser, &document))
            goto parser_error;

        /* Check if this is the stream end. */

        if (!FUNC4(&document)) {
            done = 1;
        }

        /* Emit the event. */

        if (!FUNC6(&emitter, &document))
            goto emitter_error;
    }

    FUNC11(&parser);
    FUNC5(&emitter);

    return 0;

parser_error:

    /* Display a parser error message. */

    switch (parser.error)
    {
        case YAML_MEMORY_ERROR:
            FUNC0(stderr, "Memory error: Not enough memory for parsing\n");
            break;

        case YAML_READER_ERROR:
            if (parser.problem_value != -1) {
                FUNC0(stderr, "Reader error: %s: #%X at %d\n", parser.problem,
                        parser.problem_value, parser.problem_offset);
            }
            else {
                FUNC0(stderr, "Reader error: %s at %d\n", parser.problem,
                        parser.problem_offset);
            }
            break;

        case YAML_SCANNER_ERROR:
            if (parser.context) {
                FUNC0(stderr, "Scanner error: %s at line %d, column %d\n"
                        "%s at line %d, column %d\n", parser.context,
                        parser.context_mark.line+1, parser.context_mark.column+1,
                        parser.problem, parser.problem_mark.line+1,
                        parser.problem_mark.column+1);
            }
            else {
                FUNC0(stderr, "Scanner error: %s at line %d, column %d\n",
                        parser.problem, parser.problem_mark.line+1,
                        parser.problem_mark.column+1);
            }
            break;

        case YAML_PARSER_ERROR:
            if (parser.context) {
                FUNC0(stderr, "Parser error: %s at line %d, column %d\n"
                        "%s at line %d, column %d\n", parser.context,
                        parser.context_mark.line+1, parser.context_mark.column+1,
                        parser.problem, parser.problem_mark.line+1,
                        parser.problem_mark.column+1);
            }
            else {
                FUNC0(stderr, "Parser error: %s at line %d, column %d\n",
                        parser.problem, parser.problem_mark.line+1,
                        parser.problem_mark.column+1);
            }
            break;

        case YAML_COMPOSER_ERROR:
            if (parser.context) {
                FUNC0(stderr, "Composer error: %s at line %d, column %d\n"
                        "%s at line %d, column %d\n", parser.context,
                        parser.context_mark.line+1, parser.context_mark.column+1,
                        parser.problem, parser.problem_mark.line+1,
                        parser.problem_mark.column+1);
            }
            else {
                FUNC0(stderr, "Composer error: %s at line %d, column %d\n",
                        parser.problem, parser.problem_mark.line+1,
                        parser.problem_mark.column+1);
            }
            break;

        default:
            /* Couldn't happen. */
            FUNC0(stderr, "Internal error\n");
            break;
    }

    FUNC11(&parser);
    FUNC5(&emitter);

    return 1;

emitter_error:

    /* Display an emitter error message. */

    switch (emitter.error)
    {
        case YAML_MEMORY_ERROR:
            FUNC0(stderr, "Memory error: Not enough memory for emitting\n");
            break;

        case YAML_WRITER_ERROR:
            FUNC0(stderr, "Writer error: %s\n", emitter.problem);
            break;

        case YAML_EMITTER_ERROR:
            FUNC0(stderr, "Emitter error: %s\n", emitter.problem);
            break;

        default:
            /* Couldn't happen. */
            FUNC0(stderr, "Internal error\n");
            break;
    }

    FUNC11(&parser);
    FUNC5(&emitter);

    return 1;
}