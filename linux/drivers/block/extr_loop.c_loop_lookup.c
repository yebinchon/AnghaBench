
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {int lo_number; } ;


 int ENODEV ;
 int find_free_cb ;
 struct loop_device* idr_find (int *,int) ;
 int idr_for_each (int *,int *,struct loop_device**) ;
 int loop_index_idr ;

__attribute__((used)) static int loop_lookup(struct loop_device **l, int i)
{
 struct loop_device *lo;
 int ret = -ENODEV;

 if (i < 0) {
  int err;

  err = idr_for_each(&loop_index_idr, &find_free_cb, &lo);
  if (err == 1) {
   *l = lo;
   ret = lo->lo_number;
  }
  goto out;
 }


 lo = idr_find(&loop_index_idr, i);
 if (lo) {
  *l = lo;
  ret = lo->lo_number;
 }
out:
 return ret;
}
