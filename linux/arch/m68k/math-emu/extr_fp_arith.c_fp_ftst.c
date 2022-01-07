
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fp_ext {int dummy; } ;


 int PINSTR ;
 int dprint (int ,char*) ;

struct fp_ext *
fp_ftst(struct fp_ext *dest, struct fp_ext *src)
{
 dprint(PINSTR, "ftst\n");

 (void)dest;

 return src;
}
