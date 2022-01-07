
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct mvebu_mbus_state {TYPE_1__* soc; } ;
typedef scalar_t__ phys_addr_t ;
struct TYPE_2__ {int num_wins; } ;


 int mvebu_mbus_read_window (struct mvebu_mbus_state*,int,int*,scalar_t__*,scalar_t__*,int *,int *,int *) ;

__attribute__((used)) static int mvebu_mbus_window_conflicts(struct mvebu_mbus_state *mbus,
           phys_addr_t base, size_t size,
           u8 target, u8 attr)
{
 u64 end = (u64)base + size;
 int win;

 for (win = 0; win < mbus->soc->num_wins; win++) {
  u64 wbase, wend;
  u32 wsize;
  u8 wtarget, wattr;
  int enabled;

  mvebu_mbus_read_window(mbus, win,
           &enabled, &wbase, &wsize,
           &wtarget, &wattr, ((void*)0));

  if (!enabled)
   continue;

  wend = wbase + wsize;





  if ((u64)base < wend && end > wbase)
   return 0;
 }

 return 1;
}
