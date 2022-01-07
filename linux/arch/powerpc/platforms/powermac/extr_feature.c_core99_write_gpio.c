
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct macio_chip {int dummy; } ;
struct device_node {int dummy; } ;


 int MACIO_OUT8 (long,int ) ;
 struct macio_chip* macio_chips ;

__attribute__((used)) static long
core99_write_gpio(struct device_node *node, long param, long value)
{
 struct macio_chip *macio = &macio_chips[0];

 MACIO_OUT8(param, (u8)(value & 0xff));
 return 0;
}
