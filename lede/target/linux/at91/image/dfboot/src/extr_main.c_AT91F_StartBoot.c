
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT91C_BOOT_ADDR ;
 int AT91F_LoadBoot () ;
 scalar_t__ AT91F_ResetRegisters () ;
 int IMAGE_ERROR ;
 int Jump (int ) ;
 int SUCCESS ;
 int printf (char*) ;

__attribute__((used)) static int AT91F_StartBoot(void)
{
 int sts;
 if((sts = AT91F_LoadBoot()) != SUCCESS) return sts;


 if (AT91F_ResetRegisters())
 {
  printf("Jump");
  Jump(AT91C_BOOT_ADDR);

 }
 return IMAGE_ERROR;
}
