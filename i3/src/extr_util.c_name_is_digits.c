
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdigit (char const) ;
 size_t strlen (char const*) ;

__attribute__((pure)) bool name_is_digits(const char *name) {

    for (size_t i = 0; i < strlen(name); i++)
        if (!isdigit(name[i]))
            return 0;

    return 1;
}
