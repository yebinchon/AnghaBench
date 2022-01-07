
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_board_info {int dummy; } ;



__attribute__((used)) static inline int omap_register_i2c_bus(int bus_id, u32 clkrate,
     struct i2c_board_info const *info,
     unsigned len)
{
 return 0;
}
