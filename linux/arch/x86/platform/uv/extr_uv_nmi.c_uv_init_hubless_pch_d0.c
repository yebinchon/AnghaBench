
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; int mask; int offset; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int PAD_OWN_GPP_D_0 ;
 int* PCH_PCR_GPIO_ADDRESS (int ) ;
 TYPE_1__* init_nmi ;
 int nmi_debug (char*) ;
 int pr_info (char*) ;
 int uv_init_hubless_pch_io (int ,int ,int ) ;

__attribute__((used)) static void uv_init_hubless_pch_d0(void)
{
 int i, read;

 read = *PCH_PCR_GPIO_ADDRESS(PAD_OWN_GPP_D_0);
 if (read != 0) {
  pr_info("UV: Hubless NMI already configured\n");
  return;
 }

 nmi_debug("UV: Initializing UV Hubless NMI on PCH\n");
 for (i = 0; i < ARRAY_SIZE(init_nmi); i++) {
  uv_init_hubless_pch_io(init_nmi[i].offset,
     init_nmi[i].mask,
     init_nmi[i].data);
 }
}
