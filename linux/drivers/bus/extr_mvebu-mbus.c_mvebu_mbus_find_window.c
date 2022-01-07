
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef size_t u32 ;
struct mvebu_mbus_state {TYPE_1__* soc; } ;
typedef scalar_t__ phys_addr_t ;
struct TYPE_2__ {int num_wins; } ;


 int ENODEV ;
 int mvebu_mbus_read_window (struct mvebu_mbus_state*,int,int*,scalar_t__*,size_t*,int *,int *,int *) ;

__attribute__((used)) static int mvebu_mbus_find_window(struct mvebu_mbus_state *mbus,
      phys_addr_t base, size_t size)
{
 int win;

 for (win = 0; win < mbus->soc->num_wins; win++) {
  u64 wbase;
  u32 wsize;
  int enabled;

  mvebu_mbus_read_window(mbus, win,
           &enabled, &wbase, &wsize,
           ((void*)0), ((void*)0), ((void*)0));

  if (!enabled)
   continue;

  if (base == wbase && size == wsize)
   return win;
 }

 return -ENODEV;
}
