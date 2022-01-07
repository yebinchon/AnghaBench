
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfp_single {scalar_t__ sign; int significand; int exponent; } ;


 int pr_debug (char*,char const*,int,int ,int ) ;

__attribute__((used)) static void vfp_single_dump(const char *str, struct vfp_single *s)
{
 pr_debug("VFP: %s: sign=%d exponent=%d significand=%08x\n",
   str, s->sign != 0, s->exponent, s->significand);
}
