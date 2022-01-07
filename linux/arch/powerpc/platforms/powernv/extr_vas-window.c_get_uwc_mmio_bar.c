
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct vas_window {int winid; TYPE_1__* vinst; } ;
struct TYPE_2__ {scalar_t__ uwc_bar_start; } ;


 int VAS_UWC_SIZE ;

__attribute__((used)) static inline void get_uwc_mmio_bar(struct vas_window *window,
   u64 *start, int *len)
{
 u64 pbaddr;

 pbaddr = window->vinst->uwc_bar_start;
 *start = pbaddr + window->winid * VAS_UWC_SIZE;
 *len = VAS_UWC_SIZE;
}
