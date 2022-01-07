
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nstime_t ;


 scalar_t__ nstime_compare (int *,int *) ;
 int nstime_copy (int *,int *) ;
 int nstime_get (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool
nstime_update_impl(nstime_t *time) {
 nstime_t old_time;

 nstime_copy(&old_time, time);
 nstime_get(time);


 if (unlikely(nstime_compare(&old_time, time) > 0)) {
  nstime_copy(time, &old_time);
  return 1;
 }

 return 0;
}
