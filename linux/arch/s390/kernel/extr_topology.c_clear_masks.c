
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mask_info {struct mask_info* next; int mask; } ;


 struct mask_info book_info ;
 int cpumask_clear (int *) ;
 struct mask_info drawer_info ;
 struct mask_info socket_info ;

__attribute__((used)) static void clear_masks(void)
{
 struct mask_info *info;

 info = &socket_info;
 while (info) {
  cpumask_clear(&info->mask);
  info = info->next;
 }
 info = &book_info;
 while (info) {
  cpumask_clear(&info->mask);
  info = info->next;
 }
 info = &drawer_info;
 while (info) {
  cpumask_clear(&info->mask);
  info = info->next;
 }
}
