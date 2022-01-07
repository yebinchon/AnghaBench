
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvc_struct {scalar_t__ irq_requested; } ;



__attribute__((used)) static void notifier_del_vio(struct hvc_struct *hp, int data)
{
 hp->irq_requested = 0;
}
