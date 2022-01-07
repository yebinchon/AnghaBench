
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeh_dev {int mode; } ;



__attribute__((used)) static void __eeh_pe_dev_mode_mark(struct eeh_dev *edev, void *flag)
{
 int mode = *((int *)flag);

 edev->mode |= mode;
}
