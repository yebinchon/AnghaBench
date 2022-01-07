
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* sds ;


 int sdssetlen (char*,int ) ;

void sdsclear(sds s) {
    sdssetlen(s, 0);
    s[0] = '\0';
}
