
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* sds ;


 int memcpy (char*,char const*,size_t) ;
 char* sdsMakeRoomFor (char*,scalar_t__) ;
 size_t sdsalloc (char*) ;
 scalar_t__ sdslen (char*) ;
 int sdssetlen (char*,size_t) ;

sds sdscpylen(sds s, const char *t, size_t len) {
    if (sdsalloc(s) < len) {
        s = sdsMakeRoomFor(s,len-sdslen(s));
        if (s == ((void*)0)) return ((void*)0);
    }
    memcpy(s, t, len);
    s[len] = '\0';
    sdssetlen(s, len);
    return s;
}
