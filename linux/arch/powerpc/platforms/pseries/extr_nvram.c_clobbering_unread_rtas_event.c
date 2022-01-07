
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ index; } ;
struct TYPE_3__ {scalar_t__ index; } ;


 scalar_t__ NVRAM_RTAS_READ_TIMEOUT ;
 scalar_t__ ktime_get_real_seconds () ;
 scalar_t__ last_unread_rtas_event ;
 TYPE_2__ oops_log_partition ;
 TYPE_1__ rtas_log_partition ;

int clobbering_unread_rtas_event(void)
{
 return (oops_log_partition.index == rtas_log_partition.index
  && last_unread_rtas_event
  && ktime_get_real_seconds() - last_unread_rtas_event <=
      NVRAM_RTAS_READ_TIMEOUT);
}
