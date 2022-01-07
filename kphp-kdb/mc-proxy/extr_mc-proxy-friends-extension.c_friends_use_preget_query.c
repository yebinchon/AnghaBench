
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct friends_gather_extra {int query_type; scalar_t__ list_id; } ;



int friends_use_preget_query (void *extra) {
  return (((struct friends_gather_extra *)extra)->query_type == 1) && (((struct friends_gather_extra *)extra)->list_id < 0);
}
