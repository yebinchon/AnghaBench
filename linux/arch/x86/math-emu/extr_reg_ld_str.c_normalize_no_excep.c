
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int FPU_REG ;


 int FPU_normalize_nuo (int *) ;
 int setexponent16 (int *,int) ;
 int setnegative (int *) ;
 int stdexp (int *) ;

__attribute__((used)) static u_char normalize_no_excep(FPU_REG *r, int exp, int sign)
{
 u_char tag;

 setexponent16(r, exp);

 tag = FPU_normalize_nuo(r);
 stdexp(r);
 if (sign)
  setnegative(r);

 return tag;
}
