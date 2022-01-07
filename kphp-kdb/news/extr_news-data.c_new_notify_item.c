
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int notify_t ;


 int NOTIFY_MODE ;
 int assert (int ) ;
 int items_kept ;
 int vkprintf (int,char*,int *) ;
 int * zmalloc0 (int) ;

__attribute__((used)) static notify_t *new_notify_item (void) {
  assert (NOTIFY_MODE);
  items_kept++;
  notify_t *p = zmalloc0 (sizeof (notify_t));
  vkprintf (6, "new_notify_item: result = %p\n", p);
  return p;
}
