
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct macio_chip {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; struct device_node* of_node; } ;


 long ENODEV ;
 int KEYLARGO_FCR2 ;
 int KEYLARGO_GPIO_OUTOUT_DATA ;
 int KEYLARGO_GPIO_OUTPUT_ENABLE ;
 int KL2_ALT_DATA_OUT ;
 int KL_GPIO_MODEM_RESET ;
 int LOCK (unsigned long) ;
 int MACIO_BIC (int ,int ) ;
 int MACIO_BIS (int ,int ) ;
 int MACIO_IN32 (int ) ;
 int MACIO_IN8 (int ) ;
 int MACIO_OUT8 (int ,int) ;
 int UNLOCK (unsigned long) ;
 TYPE_1__* macio_chips ;
 struct macio_chip* macio_find (struct device_node*,int ) ;
 scalar_t__ macio_keylargo ;
 int mdelay (int) ;

__attribute__((used)) static long
core99_modem_enable(struct device_node *node, long param, long value)
{
 struct macio_chip* macio;
 u8 gpio;
 unsigned long flags;


 if (node == ((void*)0)) {
  if (macio_chips[0].type != macio_keylargo)
   return -ENODEV;
  node = macio_chips[0].of_node;
 }
 macio = macio_find(node, 0);
 if (!macio)
  return -ENODEV;
 gpio = MACIO_IN8(KL_GPIO_MODEM_RESET);
 gpio |= KEYLARGO_GPIO_OUTPUT_ENABLE;
 gpio &= ~KEYLARGO_GPIO_OUTOUT_DATA;

 if (!value) {
  LOCK(flags);
  MACIO_OUT8(KL_GPIO_MODEM_RESET, gpio);
  UNLOCK(flags);
  (void)MACIO_IN8(KL_GPIO_MODEM_RESET);
  mdelay(250);
 }
 LOCK(flags);
 if (value) {
  MACIO_BIC(KEYLARGO_FCR2, KL2_ALT_DATA_OUT);
  UNLOCK(flags);
  (void)MACIO_IN32(KEYLARGO_FCR2);
  mdelay(250);
 } else {
  MACIO_BIS(KEYLARGO_FCR2, KL2_ALT_DATA_OUT);
  UNLOCK(flags);
 }
 if (value) {
  LOCK(flags);
  MACIO_OUT8(KL_GPIO_MODEM_RESET, gpio | KEYLARGO_GPIO_OUTOUT_DATA);
  (void)MACIO_IN8(KL_GPIO_MODEM_RESET);
  UNLOCK(flags); mdelay(250); LOCK(flags);
  MACIO_OUT8(KL_GPIO_MODEM_RESET, gpio);
  (void)MACIO_IN8(KL_GPIO_MODEM_RESET);
  UNLOCK(flags); mdelay(250); LOCK(flags);
  MACIO_OUT8(KL_GPIO_MODEM_RESET, gpio | KEYLARGO_GPIO_OUTOUT_DATA);
  (void)MACIO_IN8(KL_GPIO_MODEM_RESET);
  UNLOCK(flags); mdelay(250);
 }
 return 0;
}
