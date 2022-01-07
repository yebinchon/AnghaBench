
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* sds ;


 int hex_digit_to_int (char const) ;
 scalar_t__ is_hex_digit (char const) ;
 scalar_t__ isspace (char const) ;
 int s_free (char**) ;
 char** s_malloc (int) ;
 char** s_realloc (char**,int) ;
 char* sdscatlen (char*,char const*,int) ;
 char* sdsempty () ;
 int sdsfree (char*) ;

sds *sdssplitargs(const char *line, int *argc) {
    const char *p = line;
    char *current = ((void*)0);
    char **vector = ((void*)0);

    *argc = 0;
    while(1) {

        while(*p && isspace(*p)) p++;
        if (*p) {

            int inq=0;
            int insq=0;
            int done=0;

            if (current == ((void*)0)) current = sdsempty();
            while(!done) {
                if (inq) {
                    if (*p == '\\' && *(p+1) == 'x' &&
                                             is_hex_digit(*(p+2)) &&
                                             is_hex_digit(*(p+3)))
                    {
                        unsigned char byte;

                        byte = (hex_digit_to_int(*(p+2))*16)+
                                hex_digit_to_int(*(p+3));
                        current = sdscatlen(current,(char*)&byte,1);
                        p += 3;
                    } else if (*p == '\\' && *(p+1)) {
                        char c;

                        p++;
                        switch(*p) {
                        case 'n': c = '\n'; break;
                        case 'r': c = '\r'; break;
                        case 't': c = '\t'; break;
                        case 'b': c = '\b'; break;
                        case 'a': c = '\a'; break;
                        default: c = *p; break;
                        }
                        current = sdscatlen(current,&c,1);
                    } else if (*p == '"') {


                        if (*(p+1) && !isspace(*(p+1))) goto err;
                        done=1;
                    } else if (!*p) {

                        goto err;
                    } else {
                        current = sdscatlen(current,p,1);
                    }
                } else if (insq) {
                    if (*p == '\\' && *(p+1) == '\'') {
                        p++;
                        current = sdscatlen(current,"'",1);
                    } else if (*p == '\'') {


                        if (*(p+1) && !isspace(*(p+1))) goto err;
                        done=1;
                    } else if (!*p) {

                        goto err;
                    } else {
                        current = sdscatlen(current,p,1);
                    }
                } else {
                    switch(*p) {
                    case ' ':
                    case '\n':
                    case '\r':
                    case '\t':
                    case '\0':
                        done=1;
                        break;
                    case '"':
                        inq=1;
                        break;
                    case '\'':
                        insq=1;
                        break;
                    default:
                        current = sdscatlen(current,p,1);
                        break;
                    }
                }
                if (*p) p++;
            }

            {
                char **new_vector = s_realloc(vector,((*argc)+1)*sizeof(char*));
                if (new_vector == ((void*)0)) {
                    s_free(vector);
                    return ((void*)0);
                }

                vector = new_vector;
                vector[*argc] = current;
                (*argc)++;
                current = ((void*)0);
            }
        } else {

            if (vector == ((void*)0)) vector = s_malloc(sizeof(void*));
            return vector;
        }
    }

err:
    while((*argc)--)
        sdsfree(vector[*argc]);
    s_free(vector);
    if (current) sdsfree(current);
    *argc = 0;
    return ((void*)0);
}
