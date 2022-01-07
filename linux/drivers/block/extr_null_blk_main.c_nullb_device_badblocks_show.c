
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nullb_device {int badblocks; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int badblocks_show (int *,char*,int ) ;
 struct nullb_device* to_nullb_device (struct config_item*) ;

__attribute__((used)) static ssize_t nullb_device_badblocks_show(struct config_item *item, char *page)
{
 struct nullb_device *t_dev = to_nullb_device(item);

 return badblocks_show(&t_dev->badblocks, page, 0);
}
