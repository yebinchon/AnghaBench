
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipl_secure_flag ;

bool arch_ima_get_secureboot(void)
{
 return ipl_secure_flag;
}
