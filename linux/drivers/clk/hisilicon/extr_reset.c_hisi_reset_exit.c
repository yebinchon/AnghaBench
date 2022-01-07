
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_reset_controller {int rcdev; } ;


 int reset_controller_unregister (int *) ;

void hisi_reset_exit(struct hisi_reset_controller *rstc)
{
 reset_controller_unregister(&rstc->rcdev);
}
