
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mn {int mnctr_mode_shift; } ;


 int MNCTR_MODE_MASK ;

__attribute__((used)) static u32 reg_to_mnctr_mode(struct mn *mn, u32 val)
{
 val >>= mn->mnctr_mode_shift;
 val &= MNCTR_MODE_MASK;
 return val;
}
