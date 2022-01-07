
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* scalloc (int,int) ;

char *parse_string(const char **walk, bool as_word) {
    const char *beginning = *walk;

    if (**walk == '"') {
        beginning++;
        (*walk)++;
        for (; **walk != '\0' && **walk != '"'; (*walk)++)
            if (**walk == '\\' && *(*walk + 1) != '\0')
                (*walk)++;
    } else {
        if (!as_word) {




            while (**walk != ';' && **walk != ',' &&
                   **walk != '\0' && **walk != '\r' &&
                   **walk != '\n')
                (*walk)++;
        } else {



            while (**walk != ' ' && **walk != '\t' &&
                   **walk != ']' && **walk != ',' &&
                   **walk != ';' && **walk != '\r' &&
                   **walk != '\n' && **walk != '\0')
                (*walk)++;
        }
    }
    if (*walk == beginning)
        return ((void*)0);

    char *str = scalloc(*walk - beginning + 1, 1);

    int inpos, outpos;
    for (inpos = 0, outpos = 0;
         inpos < (*walk - beginning);
         inpos++, outpos++) {



        if (beginning[inpos] == '\\' && (beginning[inpos + 1] == '"' || beginning[inpos + 1] == '\\'))
            inpos++;
        str[outpos] = beginning[inpos];
    }

    return str;
}
