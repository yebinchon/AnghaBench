
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vas_window {int num_txwins; } ;
struct vas_instance {int mutex; scalar_t__* rxwin; } ;
typedef enum vas_cop_type { ____Placeholder_vas_cop_type } vas_cop_type ;


 int EINVAL ;
 struct vas_window* ERR_PTR (int ) ;
 int IS_ERR (struct vas_window*) ;
 int VAS_COP_TYPE_FTW ;
 int atomic_inc (int *) ;
 struct vas_window* get_user_rxwin (struct vas_instance*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct vas_window *get_vinst_rxwin(struct vas_instance *vinst,
   enum vas_cop_type cop, u32 pswid)
{
 struct vas_window *rxwin;

 mutex_lock(&vinst->mutex);

 if (cop == VAS_COP_TYPE_FTW)
  rxwin = get_user_rxwin(vinst, pswid);
 else
  rxwin = vinst->rxwin[cop] ?: ERR_PTR(-EINVAL);

 if (!IS_ERR(rxwin))
  atomic_inc(&rxwin->num_txwins);

 mutex_unlock(&vinst->mutex);

 return rxwin;
}
