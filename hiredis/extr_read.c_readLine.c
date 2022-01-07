
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buf; int pos; int len; } ;
typedef TYPE_1__ redisReader ;


 char* seekNewline (char*,int) ;

__attribute__((used)) static char *readLine(redisReader *r, int *_len) {
    char *p, *s;
    int len;

    p = r->buf+r->pos;
    s = seekNewline(p,(r->len-r->pos));
    if (s != ((void*)0)) {
        len = s-(r->buf+r->pos);
        r->pos += len+2;
        if (_len) *_len = len;
        return p;
    }
    return ((void*)0);
}
