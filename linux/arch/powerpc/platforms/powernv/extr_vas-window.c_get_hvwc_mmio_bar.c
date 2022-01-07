
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct vas_window {int winid; TYPE_1__* vinst; } ;
struct TYPE_2__ {scalar_t__ hvwc_bar_start; } ;


 int VAS_HVWC_SIZE ;

__attribute__((used)) static inline void get_hvwc_mmio_bar(struct vas_window *window,
   u64 *start, int *len)
{
 u64 pbaddr;

 pbaddr = window->vinst->hvwc_bar_start;
 *start = pbaddr + window->winid * VAS_HVWC_SIZE;
 *len = VAS_HVWC_SIZE;
}
