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
typedef  int /*<<< orphan*/  yaml_emitter_t ;
typedef  unsigned char yaml_document_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFFER_SIZE ; 
 int MAX_DOCUMENTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned char*,unsigned char*) ; 
 int FUNC2 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char**,char**,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (char*,unsigned char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,unsigned char*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 

int
FUNC27(int argc, char *argv[])
{
    int number;
    int canonical = 0;
    int unicode = 0;

    number = 1;
    while (number < argc) {
        if (FUNC10(argv[number], "-c") == 0) {
            canonical = 1;
        }
        else if (FUNC10(argv[number], "-u") == 0) {
            unicode = 1;
        }
        else if (argv[number][0] == '-') {
            FUNC9("Unknown option: '%s'\n", argv[number]);
            return 0;
        }
        if (argv[number][0] == '-') {
            if (number < argc-1) {
                FUNC6(argv+number, argv+number+1, (argc-number-1)*sizeof(char *));
            }
            argc --;
        }
        else {
            number ++;
        }
    }

    if (argc < 2) {
        FUNC9("Usage: %s [-c] [-u] file1.yaml ...\n", argv[0]);
        return 0;
    }

    for (number = 1; number < argc; number ++)
    {
        FILE *file;
        yaml_parser_t parser;
        yaml_emitter_t emitter;

        yaml_document_t document;
        unsigned char buffer[BUFFER_SIZE+1];
        size_t written = 0;
        yaml_document_t documents[MAX_DOCUMENTS];
        size_t document_number = 0;
        int done = 0;
        int count = 0;
        int error = 0;
        int k;
        FUNC7(buffer, 0, BUFFER_SIZE+1);
        FUNC7(documents, 0, MAX_DOCUMENTS*sizeof(yaml_document_t));

        FUNC9("[%d] Loading, dumping, and loading again '%s': ", number, argv[number]);
        FUNC4(stdout);

        file = FUNC5(argv[number], "rb");
        FUNC0(*file);

        FUNC0(FUNC23(&parser));
        FUNC25(&parser, file);
        FUNC0(FUNC17(&emitter));
        if (canonical) {
            FUNC19(&emitter, 1);
        }
        if (unicode) {
            FUNC21(&emitter, 1);
        }
        FUNC20(&emitter, buffer, BUFFER_SIZE, &written);
        FUNC18(&emitter);

        while (!done)
        {
            if (!FUNC24(&parser, &document)) {
                error = 1;
                break;
            }

            done = (!FUNC12(&document));
            if (!done) {
                FUNC0(document_number < MAX_DOCUMENTS);
                FUNC0(FUNC2(&(documents[document_number++]), &document));
                FUNC0(FUNC15(&emitter, &document) || 
                        (FUNC16(&emitter) && FUNC8(argv[number], buffer, written, count)));
                count ++;
            }
            else {
                FUNC11(&document);
            }
        }

        FUNC22(&parser);
        FUNC0(!FUNC3(file));
        FUNC13(&emitter);
        FUNC14(&emitter);

        if (!error)
        {
            count = done = 0;
            FUNC0(FUNC23(&parser));
            FUNC26(&parser, buffer, written);

            while (!done)
            {
                FUNC0(FUNC24(&parser, &document) || FUNC8(argv[number], buffer, written, count));
                done = (!FUNC12(&document));
                if (!done) {
                    FUNC0(FUNC1(documents+count, &document) || FUNC8(argv[number], buffer, written, count));
                    count ++;
                }
                FUNC11(&document);
            }
            FUNC22(&parser);
        }

        for (k = 0; k < document_number; k ++) {
            FUNC11(documents+k);
        }

        FUNC9("PASSED (length: %d)\n", written);
        FUNC8(argv[number], buffer, written, -1);
    }

    return 0;
}