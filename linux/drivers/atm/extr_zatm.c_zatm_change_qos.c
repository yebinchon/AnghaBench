
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_vcc {int dummy; } ;
struct atm_qos {int dummy; } ;


 int ENOSYS ;
 int printk (char*) ;

__attribute__((used)) static int zatm_change_qos(struct atm_vcc *vcc,struct atm_qos *qos,int flags)
{
 printk("Not yet implemented\n");
 return -ENOSYS;

}
