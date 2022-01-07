
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ l; } ;
typedef TYPE_1__ kstring_t ;


 int check (char*,TYPE_1__*,char*) ;
 int kputl (long,TYPE_1__*) ;
 int sprintf (char*,char*,long) ;

void test_kputl(kstring_t *ks, long n)
{
 char buf[24];

 ks->l = 0;
 kputl(n, ks);

 sprintf(buf, "%ld", n);
 check("kputl()", ks, buf);
}
