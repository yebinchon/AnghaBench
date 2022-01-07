
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct ccu_mux_nb {int delay_us; int original_index; int cm; int common; int bypass_index; } ;


 unsigned long POST_RATE_CHANGE ;
 unsigned long PRE_RATE_CHANGE ;
 int ccu_mux_helper_get_parent (int ,int ) ;
 int ccu_mux_helper_set_parent (int ,int ,int ) ;
 int notifier_from_errno (int) ;
 struct ccu_mux_nb* to_ccu_mux_nb (struct notifier_block*) ;
 int udelay (int ) ;

__attribute__((used)) static int ccu_mux_notifier_cb(struct notifier_block *nb,
          unsigned long event, void *data)
{
 struct ccu_mux_nb *mux = to_ccu_mux_nb(nb);
 int ret = 0;

 if (event == PRE_RATE_CHANGE) {
  mux->original_index = ccu_mux_helper_get_parent(mux->common,
        mux->cm);
  ret = ccu_mux_helper_set_parent(mux->common, mux->cm,
      mux->bypass_index);
 } else if (event == POST_RATE_CHANGE) {
  ret = ccu_mux_helper_set_parent(mux->common, mux->cm,
      mux->original_index);
 }

 udelay(mux->delay_us);

 return notifier_from_errno(ret);
}
