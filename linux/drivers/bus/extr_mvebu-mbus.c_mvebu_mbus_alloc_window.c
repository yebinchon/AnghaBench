
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mvebu_mbus_state {TYPE_1__* soc; } ;
typedef int phys_addr_t ;
struct TYPE_2__ {int num_wins; } ;


 int ENOMEM ;
 int MVEBU_MBUS_NO_REMAP ;
 int mvebu_mbus_setup_window (struct mvebu_mbus_state*,int,int ,size_t,int ,int ,int ) ;
 scalar_t__ mvebu_mbus_window_is_free (struct mvebu_mbus_state*,int) ;
 scalar_t__ mvebu_mbus_window_is_remappable (struct mvebu_mbus_state*,int) ;

__attribute__((used)) static int mvebu_mbus_alloc_window(struct mvebu_mbus_state *mbus,
       phys_addr_t base, size_t size,
       phys_addr_t remap, u8 target,
       u8 attr)
{
 int win;

 if (remap == MVEBU_MBUS_NO_REMAP) {
  for (win = 0; win < mbus->soc->num_wins; win++) {
   if (mvebu_mbus_window_is_remappable(mbus, win))
    continue;

   if (mvebu_mbus_window_is_free(mbus, win))
    return mvebu_mbus_setup_window(mbus, win, base,
              size, remap,
              target, attr);
  }
 }

 for (win = 0; win < mbus->soc->num_wins; win++) {

  if ((remap != MVEBU_MBUS_NO_REMAP) &&
      !mvebu_mbus_window_is_remappable(mbus, win))
   continue;

  if (mvebu_mbus_window_is_free(mbus, win))
   return mvebu_mbus_setup_window(mbus, win, base, size,
             remap, target, attr);
 }

 return -ENOMEM;
}
