
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ace_device {int dummy; } ;


 int ace_out (struct ace_device*,int,int) ;

__attribute__((used)) static inline void ace_out32(struct ace_device *ace, int reg, u32 val)
{
 ace_out(ace, reg, val);
 ace_out(ace, reg + 2, val >> 16);
}
