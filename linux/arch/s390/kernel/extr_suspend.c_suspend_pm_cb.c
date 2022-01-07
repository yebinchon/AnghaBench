
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int GFP_KERNEL ;
 int LC_ORDER ;
 int NOTIFY_BAD ;
 int NOTIFY_DONE ;
 int NOTIFY_OK ;




 int __get_free_pages (int ,int ) ;
 int free_pages (int ,int ) ;
 int suspend_zero_pages ;

__attribute__((used)) static int suspend_pm_cb(struct notifier_block *nb, unsigned long action,
    void *ptr)
{
 switch (action) {
 case 128:
 case 131:
  suspend_zero_pages = __get_free_pages(GFP_KERNEL, LC_ORDER);
  if (!suspend_zero_pages)
   return NOTIFY_BAD;
  break;
 case 129:
 case 130:
  free_pages(suspend_zero_pages, LC_ORDER);
  break;
 default:
  return NOTIFY_DONE;
 }
 return NOTIFY_OK;
}
