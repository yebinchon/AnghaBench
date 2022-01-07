
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mid_pwr {int dummy; } ;


 int mid_set_initial_state (struct mid_pwr*,int const*) ;

__attribute__((used)) static int pnw_set_initial_state(struct mid_pwr *pwr)
{

 static const u32 states[] = {
  0xf00fffff,
  0xffffffff,
  0xffffffff,
  0xffffffff,
 };
 return mid_set_initial_state(pwr, states);
}
