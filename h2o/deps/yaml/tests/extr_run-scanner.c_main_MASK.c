#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ type; } ;
typedef  TYPE_1__ yaml_token_t ;
typedef  int /*<<< orphan*/  yaml_parser_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ YAML_STREAM_END_TOKEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

int
FUNC10(int argc, char *argv[])
{
    int number;

    if (argc < 2) {
        FUNC4("Usage: %s file1.yaml ...\n", argv[0]);
        return 0;
    }

    for (number = 1; number < argc; number ++)
    {
        FILE *file;
        yaml_parser_t parser;
        yaml_token_t token;
        int done = 0;
        int count = 0;
        int error = 0;

        FUNC4("[%d] Scanning '%s': ", number, argv[number]);
        FUNC2(stdout);

        file = FUNC3(argv[number], "rb");
        FUNC0(*file);

        FUNC0(FUNC6(&parser));

        FUNC8(&parser, file);

        while (!done)
        {
            if (!FUNC7(&parser, &token)) {
                error = 1;
                break;
            }

            done = (token.type == YAML_STREAM_END_TOKEN);

            FUNC9(&token);

            count ++;
        }

        FUNC5(&parser);

        FUNC0(!FUNC1(file));

        FUNC4("%s (%d tokens)\n", (error ? "FAILURE" : "SUCCESS"), count);
    }

    return 0;
}