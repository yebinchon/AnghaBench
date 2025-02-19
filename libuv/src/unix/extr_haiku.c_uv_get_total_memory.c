
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int max_pages; } ;
typedef TYPE_1__ system_info ;
typedef scalar_t__ status_t ;


 scalar_t__ B_OK ;
 int B_PAGE_SIZE ;
 scalar_t__ get_system_info (TYPE_1__*) ;

uint64_t uv_get_total_memory(void) {
  status_t status;
  system_info sinfo;

  status = get_system_info(&sinfo);
  if (status != B_OK)
    return 0;

  return sinfo.max_pages * B_PAGE_SIZE;
}
