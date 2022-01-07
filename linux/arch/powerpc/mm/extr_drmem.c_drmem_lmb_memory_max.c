
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct drmem_lmb {scalar_t__ base_addr; } ;
struct TYPE_2__ {int n_lmbs; struct drmem_lmb* lmbs; } ;


 TYPE_1__* drmem_info ;
 scalar_t__ drmem_lmb_size () ;

u64 drmem_lmb_memory_max(void)
{
 struct drmem_lmb *last_lmb;

 last_lmb = &drmem_info->lmbs[drmem_info->n_lmbs - 1];
 return last_lmb->base_addr + drmem_lmb_size();
}
