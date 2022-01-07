
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int team; } ;
typedef TYPE_1__ thread_info ;
typedef scalar_t__ status_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_6__ {scalar_t__ ram_size; } ;
typedef TYPE_2__ area_info ;


 scalar_t__ B_OK ;
 int UV__ERR (scalar_t__) ;
 int find_thread (int *) ;
 scalar_t__ get_next_area_info (int ,scalar_t__*,TYPE_2__*) ;
 scalar_t__ get_thread_info (int ,TYPE_1__*) ;

int uv_resident_set_memory(size_t* rss) {
  area_info area;
  ssize_t cookie;
  status_t status;
  thread_info thread;

  status = get_thread_info(find_thread(((void*)0)), &thread);
  if (status != B_OK)
    return UV__ERR(status);

  cookie = 0;
  *rss = 0;
  while (get_next_area_info(thread.team, &cookie, &area) == B_OK)
    *rss += area.ram_size;

  return 0;
}
