
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ia64_fpreg {int dummy; } ;


 int ia64_ldf_fill (int,struct ia64_fpreg*) ;
 int ia64_stf8 (struct ia64_fpreg*,int) ;
 int ia64_stop () ;

__attribute__((used)) static inline void
float2mem_integer (struct ia64_fpreg *init, struct ia64_fpreg *final)
{
 ia64_ldf_fill(6, init);
 ia64_stop();
 ia64_stf8(final, 6);
}
