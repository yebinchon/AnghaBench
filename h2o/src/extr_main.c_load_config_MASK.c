#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {char* filename; scalar_t__ line; } ;
typedef  TYPE_2__ yoml_t ;
struct TYPE_16__ {char* filename; } ;
typedef  TYPE_3__ yoml_parse_args_t ;
struct TYPE_14__ {scalar_t__ line; } ;
struct TYPE_17__ {char* problem; TYPE_1__ problem_mark; } ;
typedef  TYPE_4__ yaml_parser_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static yoml_t *FUNC8(yoml_parse_args_t *parse_args, yoml_t *source)
{
    FILE *fp;
    yaml_parser_t parser;
    yoml_t *yoml;

    if ((fp = FUNC1(parse_args->filename, "rb")) == NULL) {
        FUNC2(stderr, "could not open configuration file %s: %s\n", parse_args->filename, FUNC3(errno));
        return NULL;
    }

    FUNC5(&parser);
    FUNC6(&parser, fp);

    yoml = FUNC7(&parser, NULL, parse_args);

    if (yoml == NULL) {
        FUNC2(stderr, "failed to parse configuration file %s line %d", parse_args->filename, (int)parser.problem_mark.line + 1);
        if (source != NULL) {
            FUNC2(stderr, " (included from file %s line %d)", source->filename, (int)source->line + 1);
        }
        FUNC2(stderr, ": %s\n", parser.problem);
    }

    FUNC4(&parser);

    FUNC0(fp);

    return yoml;
}