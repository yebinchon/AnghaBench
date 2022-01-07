
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ST0_IM ;
 unsigned int STATUSF_IP0 ;
 unsigned int STATUSF_IP1 ;
 unsigned int STATUSF_IP2 ;
 unsigned int STATUSF_IP3 ;
 unsigned int STATUSF_IP4 ;
 int change_c0_status (int ,unsigned int) ;

void sb1250_smp_init(void)
{
 unsigned int imask = STATUSF_IP4 | STATUSF_IP3 | STATUSF_IP2 |
  STATUSF_IP1 | STATUSF_IP0;


 change_c0_status(ST0_IM, imask);
}
