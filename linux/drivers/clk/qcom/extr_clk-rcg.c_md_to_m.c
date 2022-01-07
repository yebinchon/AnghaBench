
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mn {int m_val_shift; int width; } ;


 int BIT (int ) ;

__attribute__((used)) static u32 md_to_m(struct mn *mn, u32 md)
{
 md >>= mn->m_val_shift;
 md &= BIT(mn->width) - 1;
 return md;
}
