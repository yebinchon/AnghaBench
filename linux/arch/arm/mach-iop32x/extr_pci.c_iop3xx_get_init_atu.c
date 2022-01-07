
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IOP3XX_INIT_ATU_DEFAULT ;
 int IOP3XX_INIT_ATU_DISABLE ;
 scalar_t__ init_atu ;

int iop3xx_get_init_atu(void) {

 if (init_atu != IOP3XX_INIT_ATU_DEFAULT)
  return init_atu;
 else
  return IOP3XX_INIT_ATU_DISABLE;
}
