
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;


 int sdsnewlen (char const*,size_t) ;
 size_t strlen (char const*) ;

sds sdsnew(const char *init) {
    size_t initlen = (init == ((void*)0)) ? 0 : strlen(init);
    return sdsnewlen(init, initlen);
}
