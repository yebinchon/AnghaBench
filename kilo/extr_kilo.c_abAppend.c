
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct abuf {char* b; int len; } ;


 int memcpy (char*,char const*,int) ;
 char* realloc (char*,int) ;

void abAppend(struct abuf *ab, const char *s, int len) {
    char *new = realloc(ab->b,ab->len+len);

    if (new == ((void*)0)) return;
    memcpy(new+ab->len,s,len);
    ab->b = new;
    ab->len += len;
}
