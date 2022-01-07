
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeh_dev {int mode; } ;


 int EEH_DEV_REMOVED ;

__attribute__((used)) static bool eeh_dev_removed(struct eeh_dev *edev)
{
 return !edev || (edev->mode & EEH_DEV_REMOVED);
}
