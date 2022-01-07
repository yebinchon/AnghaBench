
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_vcc {int dummy; } ;
struct atm_qos {int dummy; } ;


 int EBUSY ;

__attribute__((used)) static int lanai_change_qos(struct atm_vcc *atmvcc,
           struct atm_qos *qos, int flags)
{
 return -EBUSY;
}
