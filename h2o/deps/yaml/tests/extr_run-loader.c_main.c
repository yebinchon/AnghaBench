
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yaml_parser_t ;
typedef int yaml_document_t ;
typedef int FILE ;


 int assert (int) ;
 int fclose (int *) ;
 int fflush (int ) ;
 int * fopen (char*,char*) ;
 int printf (char*,...) ;
 int stdout ;
 int yaml_document_delete (int *) ;
 int yaml_document_get_root_node (int *) ;
 int yaml_parser_delete (int *) ;
 int yaml_parser_initialize (int *) ;
 int yaml_parser_load (int *,int *) ;
 int yaml_parser_set_input_file (int *,int *) ;

int
main(int argc, char *argv[])
{
    int number;

    if (argc < 2) {
        printf("Usage: %s file1.yaml ...\n", argv[0]);
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

        printf("[%d] Loading '%s': ", number, argv[number]);
        fflush(stdout);

        file = fopen(argv[number], "rb");
        assert(file);

        assert(yaml_parser_initialize(&parser));

        yaml_parser_set_input_file(&parser, file);

        while (!done)
        {
            if (!yaml_parser_load(&parser, &document)) {
                error = 1;
                break;
            }

            done = (!yaml_document_get_root_node(&document));

            yaml_document_delete(&document);

            if (!done) count ++;
        }

        yaml_parser_delete(&parser);

        assert(!fclose(file));

        printf("%s (%d documents)\n", (error ? "FAILURE" : "SUCCESS"), count);
    }

    return 0;
}
