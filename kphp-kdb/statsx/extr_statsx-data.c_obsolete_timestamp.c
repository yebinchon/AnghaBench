
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ get_day (int) ;

int obsolete_timestamp (int created_at, int max_timestamp) {
  return get_day (created_at) != get_day (max_timestamp);
}
