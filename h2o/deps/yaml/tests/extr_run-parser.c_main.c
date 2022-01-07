
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int yaml_parser_t ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_1__ yaml_event_t ;
typedef int FILE ;


 scalar_t__ YAML_STREAM_END_EVENT ;
 int assert (int) ;
 int fclose (int *) ;
 int fflush (int ) ;
 int * fopen (char*,char*) ;
 int printf (char*,...) ;
 int stdout ;
 int yaml_event_delete (TYPE_1__*) ;
 int yaml_parser_delete (int *) ;
 int yaml_parser_initialize (int *) ;
 int yaml_parser_parse (int *,TYPE_1__*) ;
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
        yaml_event_t event;
        int done = 0;
        int count = 0;
        int error = 0;

        printf("[%d] Parsing '%s': ", number, argv[number]);
        fflush(stdout);

        file = fopen(argv[number], "rb");
        assert(file);

        assert(yaml_parser_initialize(&parser));

        yaml_parser_set_input_file(&parser, file);

        while (!done)
        {
            if (!yaml_parser_parse(&parser, &event)) {
                error = 1;
                break;
            }

            done = (event.type == YAML_STREAM_END_EVENT);

            yaml_event_delete(&event);

            count ++;
        }

        yaml_parser_delete(&parser);

        assert(!fclose(file));

        printf("%s (%d events)\n", (error ? "FAILURE" : "SUCCESS"), count);
    }

    return 0;
}
