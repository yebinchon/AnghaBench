
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIT_RESET_ON ;
 int REG_RESET ;
 int ec_write (int ,int ) ;
 int reset_cpu () ;

__attribute__((used)) static void ml2f_reboot(void)
{
 reset_cpu();


 ec_write(REG_RESET, BIT_RESET_ON);
}
