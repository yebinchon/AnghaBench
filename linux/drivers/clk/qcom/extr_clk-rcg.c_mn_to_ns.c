
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mn {int n_val_shift; int width; } ;


 int BIT (int ) ;

__attribute__((used)) static u32 mn_to_ns(struct mn *mn, u32 m, u32 n, u32 ns)
{
 u32 mask;

 mask = BIT(mn->width) - 1;
 mask <<= mn->n_val_shift;
 ns &= ~mask;

 if (n) {
  n = n - m;
  n = ~n;
  n &= BIT(mn->width) - 1;
  n <<= mn->n_val_shift;
  ns |= n;
 }

 return ns;
}
