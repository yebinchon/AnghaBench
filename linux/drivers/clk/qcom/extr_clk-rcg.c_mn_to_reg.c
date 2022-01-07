
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mn {int mnctr_mode_shift; int mnctr_en_bit; } ;


 int BIT (int ) ;
 int MNCTR_MODE_DUAL ;
 int MNCTR_MODE_MASK ;

__attribute__((used)) static u32 mn_to_reg(struct mn *mn, u32 m, u32 n, u32 val)
{
 u32 mask;

 mask = MNCTR_MODE_MASK << mn->mnctr_mode_shift;
 mask |= BIT(mn->mnctr_en_bit);
 val &= ~mask;

 if (n) {
  val |= BIT(mn->mnctr_en_bit);
  val |= MNCTR_MODE_DUAL << mn->mnctr_mode_shift;
 }

 return val;
}
