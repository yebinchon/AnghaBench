
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int n; TYPE_2__* array; } ;
typedef TYPE_1__ cmdp_token_ptr ;
struct TYPE_6__ {char* name; int * identifier; } ;
typedef TYPE_2__ cmdp_token ;


 scalar_t__ ERANGE ;
 size_t INITIAL ;
 long LONG_MAX ;
 long LONG_MIN ;
 scalar_t__ errno ;
 int free (char*) ;
 char* next_state (TYPE_2__ const*) ;
 int push_long (int *,long) ;
 int push_string (int *,char*) ;
 char* scalloc (int,int) ;
 size_t state ;
 int statelist_idx ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;
 long strtol (char const*,char**,int) ;
 TYPE_1__* tokens ;

__attribute__((used)) static char *rewrite_binding(const char *input) {
    state = INITIAL;
    statelist_idx = 1;

    const char *walk = input;
    const size_t len = strlen(input);
    int c;
    const cmdp_token *token;
    char *result = ((void*)0);



    while ((size_t)(walk - input) <= len) {


        while ((*walk == ' ' || *walk == '\t') && *walk != '\0')
            walk++;



        cmdp_token_ptr *ptr = &(tokens[state]);
        for (c = 0; c < ptr->n; c++) {
            token = &(ptr->array[c]);


            if (token->name[0] == '\'') {
                if (strncasecmp(walk, token->name + 1, strlen(token->name) - 1) == 0) {
                    if (token->identifier != ((void*)0))
                        push_string(token->identifier, token->name + 1);
                    walk += strlen(token->name) - 1;
                    if ((result = next_state(token)) != ((void*)0))
                        return result;
                    break;
                }
                continue;
            }

            if (strcmp(token->name, "number") == 0) {

                char *end = ((void*)0);
                errno = 0;
                long int num = strtol(walk, &end, 10);
                if ((errno == ERANGE && (num == LONG_MIN || num == LONG_MAX)) ||
                    (errno != 0 && num == 0))
                    continue;


                if (end == walk)
                    continue;

                if (token->identifier != ((void*)0))
                    push_long(token->identifier, num);


                walk = end;
                if ((result = next_state(token)) != ((void*)0))
                    return result;
                break;
            }

            if (strcmp(token->name, "string") == 0 ||
                strcmp(token->name, "word") == 0) {
                const char *beginning = walk;

                if (*walk == '"') {
                    beginning++;
                    walk++;
                    while (*walk != '\0' && (*walk != '"' || *(walk - 1) == '\\'))
                        walk++;
                } else {
                    if (token->name[0] == 's') {
                        while (*walk != '\0' && *walk != '\r' && *walk != '\n')
                            walk++;
                    } else {



                        while (*walk != ' ' && *walk != '\t' &&
                               *walk != ']' && *walk != ',' &&
                               *walk != ';' && *walk != '\r' &&
                               *walk != '\n' && *walk != '\0')
                            walk++;
                    }
                }
                if (walk != beginning) {
                    char *str = scalloc(walk - beginning + 1, 1);

                    int inpos, outpos;
                    for (inpos = 0, outpos = 0;
                         inpos < (walk - beginning);
                         inpos++, outpos++) {



                        if (beginning[inpos] == '\\' && beginning[inpos + 1] == '"')
                            inpos++;
                        str[outpos] = beginning[inpos];
                    }
                    if (token->identifier)
                        push_string(token->identifier, str);
                    free(str);


                    if (*walk == '"')
                        walk++;
                    if ((result = next_state(token)) != ((void*)0))
                        return result;
                    break;
                }
            }

            if (strcmp(token->name, "end") == 0) {

                if (*walk == '\0' || *walk == '\n' || *walk == '\r') {
                    if ((result = next_state(token)) != ((void*)0))
                        return result;





                    walk++;
                    break;
                }
            }
        }
    }

    return ((void*)0);
}
