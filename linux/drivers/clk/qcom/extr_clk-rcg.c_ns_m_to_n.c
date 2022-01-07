
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mn {int n_val_shift; int width; } ;


 int BIT (int ) ;

__attribute__((used)) static u32 ns_m_to_n(struct mn *mn, u32 ns, u32 m)
{
 ns = ~ns >> mn->n_val_shift;
 ns &= BIT(mn->width) - 1;
 return ns + m;
}
