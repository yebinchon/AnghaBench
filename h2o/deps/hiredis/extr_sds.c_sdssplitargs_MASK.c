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
typedef  char* sds ;

/* Variables and functions */
 int FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 char** FUNC4 (int) ; 
 char** FUNC5 (char**,int) ; 
 char* FUNC6 (char*,char const*,int) ; 
 char* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

sds *FUNC9(const char *line, int *argc) {
    const char *p = line;
    char *current = NULL;
    char **vector = NULL;

    *argc = 0;
    while(1) {
        /* skip blanks */
        while(*p && FUNC2(*p)) p++;
        if (*p) {
            /* get a token */
            int inq=0;  /* set to 1 if we are in "quotes" */
            int insq=0; /* set to 1 if we are in 'single quotes' */
            int done=0;

            if (current == NULL) current = FUNC7();
            while(!done) {
                if (inq) {
                    if (*p == '\\' && *(p+1) == 'x' &&
                                             FUNC1(*(p+2)) &&
                                             FUNC1(*(p+3)))
                    {
                        unsigned char byte;

                        byte = (FUNC0(*(p+2))*16)+
                                FUNC0(*(p+3));
                        current = FUNC6(current,(char*)&byte,1);
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
                        current = FUNC6(current,&c,1);
                    } else if (*p == '"') {
                        /* closing quote must be followed by a space or
                         * nothing at all. */
                        if (*(p+1) && !FUNC2(*(p+1))) goto err;
                        done=1;
                    } else if (!*p) {
                        /* unterminated quotes */
                        goto err;
                    } else {
                        current = FUNC6(current,p,1);
                    }
                } else if (insq) {
                    if (*p == '\\' && *(p+1) == '\'') {
                        p++;
                        current = FUNC6(current,"'",1);
                    } else if (*p == '\'') {
                        /* closing quote must be followed by a space or
                         * nothing at all. */
                        if (*(p+1) && !FUNC2(*(p+1))) goto err;
                        done=1;
                    } else if (!*p) {
                        /* unterminated quotes */
                        goto err;
                    } else {
                        current = FUNC6(current,p,1);
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
                        current = FUNC6(current,p,1);
                        break;
                    }
                }
                if (*p) p++;
            }
            /* add the token to the vector */
            vector = FUNC5(vector,((*argc)+1)*sizeof(char*));
            vector[*argc] = current;
            (*argc)++;
            current = NULL;
        } else {
            /* Even on empty input string return something not NULL. */
            if (vector == NULL) vector = FUNC4(sizeof(void*));
            return vector;
        }
    }

err:
    while((*argc)--)
        FUNC8(vector[*argc]);
    FUNC3(vector);
    if (current) FUNC8(current);
    *argc = 0;
    return NULL;
}