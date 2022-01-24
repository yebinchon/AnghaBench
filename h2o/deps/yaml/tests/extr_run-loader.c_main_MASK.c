#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  yaml_parser_t ;
typedef  int /*<<< orphan*/  yaml_document_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC11(int argc, char *argv[])
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
        yaml_document_t document;
        int done = 0;
        int count = 0;
        int error = 0;

        FUNC4("[%d] Loading '%s': ", number, argv[number]);
        FUNC2(stdout);

        file = FUNC3(argv[number], "rb");
        FUNC0(*file);

        FUNC0(FUNC8(&parser));

        FUNC10(&parser, file);

        while (!done)
        {
            if (!FUNC9(&parser, &document)) {
                error = 1;
                break;
            }

            done = (!FUNC6(&document));

            FUNC5(&document);

            if (!done) count ++;
        }

        FUNC7(&parser);

        FUNC0(!FUNC1(file));

        FUNC4("%s (%d documents)\n", (error ? "FAILURE" : "SUCCESS"), count);
    }

    return 0;
}