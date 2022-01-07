
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ecx_plat_data {int* port_to_sgpio; } ;



__attribute__((used)) static inline int sgpio_bit_shift(struct ecx_plat_data *pdata, u32 port,
    u32 shift)
{
 return 1 << (3 * pdata->port_to_sgpio[port] + shift);
}
