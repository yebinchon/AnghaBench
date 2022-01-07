
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** scalloc (int,int) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static char **add_argument(char **original, char *opt_char, char *opt_arg, char *opt_name) {
    int num_args;
    for (num_args = 0; original[num_args] != ((void*)0); num_args++)
        ;
    char **result = scalloc(num_args + 3, sizeof(char *));


    int write_index = 0;
    bool skip_next = 0;
    for (int i = 0; i < num_args; ++i) {
        if (skip_next) {
            skip_next = 0;
            continue;
        }
        if (!strcmp(original[i], opt_char) ||
            (opt_name && !strcmp(original[i], opt_name))) {
            if (opt_arg)
                skip_next = 1;
            continue;
        }
        result[write_index++] = original[i];
    }


    result[write_index++] = opt_char;
    result[write_index] = opt_arg;

    return result;
}
