
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;


 int sdslen (int const) ;
 int sdsnewlen (int const,int ) ;

sds sdsdup(const sds s) {
    return sdsnewlen(s, sdslen(s));
}
