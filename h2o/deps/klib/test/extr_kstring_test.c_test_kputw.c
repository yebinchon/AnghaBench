
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ l; } ;
typedef TYPE_1__ kstring_t ;


 int check (char*,TYPE_1__*,char*) ;
 int kputw (int,TYPE_1__*) ;
 int sprintf (char*,char*,int) ;

void test_kputw(kstring_t *ks, int n)
{
 char buf[16];

 ks->l = 0;
 kputw(n, ks);

 sprintf(buf, "%d", n);
 check("kputw()", ks, buf);
}
