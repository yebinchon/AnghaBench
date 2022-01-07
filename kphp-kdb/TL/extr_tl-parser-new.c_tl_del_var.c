
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_var {int dummy; } ;


 int zfree (struct tl_var*,int) ;

void tl_del_var (struct tl_var *v) {

  zfree (v, sizeof (*v));
}
