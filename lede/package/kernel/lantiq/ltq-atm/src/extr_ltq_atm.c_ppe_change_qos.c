
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_vcc {int dummy; } ;
struct atm_qos {int dummy; } ;


 int EINVAL ;
 int find_vcc (struct atm_vcc*) ;
 int set_qsb (struct atm_vcc*,struct atm_qos*,int) ;

__attribute__((used)) static int ppe_change_qos(struct atm_vcc *vcc, struct atm_qos *qos, int flags)
{
 int conn;

 if ( vcc == ((void*)0) || qos == ((void*)0) )
  return -EINVAL;

 conn = find_vcc(vcc);
 if ( conn < 0 )
  return -EINVAL;

 set_qsb(vcc, qos, conn);

 return 0;
}
