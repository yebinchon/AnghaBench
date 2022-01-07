
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BOOTSTRAP_WORDS ;
 int GPIO83_BT_ON ;
 int MFP_LPM_DRIVE_HIGH ;
 int MFP_LPM_DRIVE_LOW ;
 int RESUME_BT_ADDR ;
 int RESUME_ENABLE_ADDR ;
 int RESUME_ENABLE_VAL ;
 int RESUME_UNKNOWN_ADDR ;
 int RESUME_VECTOR_ADDR ;
 int gpio_get_value (int ) ;
 int install_bootstrap () ;
 int* phys_to_virt (int ) ;
 int pxa2xx_mfp_set_lpm (int ,int ) ;
 int* save_buffer ;

__attribute__((used)) static int mioa701_sys_suspend(void)
{
 int i = 0, is_bt_on;
 u32 *mem_resume_vector = phys_to_virt(RESUME_VECTOR_ADDR);
 u32 *mem_resume_enabler = phys_to_virt(RESUME_ENABLE_ADDR);
 u32 *mem_resume_bt = phys_to_virt(RESUME_BT_ADDR);
 u32 *mem_resume_unknown = phys_to_virt(RESUME_UNKNOWN_ADDR);


 is_bt_on = !!gpio_get_value(GPIO83_BT_ON);
 pxa2xx_mfp_set_lpm(GPIO83_BT_ON,
      is_bt_on ? MFP_LPM_DRIVE_HIGH : MFP_LPM_DRIVE_LOW);

 for (i = 0; i < BOOTSTRAP_WORDS; i++)
  save_buffer[i] = mem_resume_vector[i];
 save_buffer[i++] = *mem_resume_enabler;
 save_buffer[i++] = *mem_resume_bt;
 save_buffer[i++] = *mem_resume_unknown;

 *mem_resume_enabler = RESUME_ENABLE_VAL;
 *mem_resume_bt = is_bt_on;

 install_bootstrap();
 return 0;
}
