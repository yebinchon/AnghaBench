
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macio_chip {int dummy; } ;
struct device_node {int dummy; } ;


 long MACIO_IN8 (long) ;
 struct macio_chip* macio_chips ;

__attribute__((used)) static long
core99_read_gpio(struct device_node *node, long param, long value)
{
 struct macio_chip *macio = &macio_chips[0];

 return MACIO_IN8(param);
}
