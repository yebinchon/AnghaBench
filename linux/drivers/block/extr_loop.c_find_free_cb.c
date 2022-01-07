
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {scalar_t__ lo_state; } ;


 scalar_t__ Lo_unbound ;

__attribute__((used)) static int find_free_cb(int id, void *ptr, void *data)
{
 struct loop_device *lo = ptr;
 struct loop_device **l = data;

 if (lo->lo_state == Lo_unbound) {
  *l = lo;
  return 1;
 }
 return 0;
}
