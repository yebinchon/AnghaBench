
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;


 int mtspr (int const,unsigned long) ;

__attribute__((used)) static inline void set_pmspr(unsigned long sprn, unsigned long val)
{
 switch (sprn) {
 case 129:
  mtspr(129, val);
  return;

 case 128:
  mtspr(128, val);
  return;
 }
 BUG();
}
