
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; char* value; } ;
typedef TYPE_1__ placeholder_t ;


 int CS_STARTS_WITH (char*,char*) ;
 int sprintf (char*,char*,char*) ;
 char* sstrdup (char*) ;
 int strlen (char*) ;

char *format_placeholders(char *format, placeholder_t *placeholders, int num) {
    if (format == ((void*)0))
        return ((void*)0);



    int buffer_len = strlen(format) + 1;
    for (char *walk = format; *walk != '\0'; walk++) {
        for (int i = 0; i < num; i++) {
            if (!CS_STARTS_WITH(walk, placeholders[i].name))
                continue;

            buffer_len = buffer_len - strlen(placeholders[i].name) + strlen(placeholders[i].value);
            walk += strlen(placeholders[i].name) - 1;
            break;
        }
    }


    char buffer[buffer_len];
    char *outwalk = buffer;
    for (char *walk = format; *walk != '\0'; walk++) {
        if (*walk != '%') {
            *(outwalk++) = *walk;
            continue;
        }

        bool matched = 0;
        for (int i = 0; i < num; i++) {
            if (!CS_STARTS_WITH(walk, placeholders[i].name)) {
                continue;
            }

            matched = 1;
            outwalk += sprintf(outwalk, "%s", placeholders[i].value);
            walk += strlen(placeholders[i].name) - 1;
            break;
        }

        if (!matched)
            *(outwalk++) = *walk;
    }

    *outwalk = '\0';
    return sstrdup(buffer);
}
