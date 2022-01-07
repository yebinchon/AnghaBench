
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;



 unsigned long mfspr (int const) ;

__attribute__((used)) static inline unsigned long get_pmspr(unsigned long sprn)
{
 switch (sprn) {
 case 130:
  return mfspr(130);

 case 129:
  return mfspr(129);

 case 128:
  return mfspr(128);
 }
 BUG();
}
