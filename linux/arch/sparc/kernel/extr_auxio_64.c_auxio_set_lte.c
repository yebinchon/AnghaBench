
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __auxio_sbus_set_lte (int) ;
 int auxio_devtype ;

void auxio_set_lte(int on)
{
 switch(auxio_devtype) {
 case 128:
  __auxio_sbus_set_lte(on);
  break;
 case 129:

 default:
  break;
 }
}
