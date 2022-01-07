
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long incr_counter_id ;
 int incr_version ;
 int incr_version_read ;

__attribute__((used)) static int set_incr_version (long long a, int b) {
  incr_counter_id = a;
  incr_version = b;
  incr_version_read = 1;
  return 0;
}
