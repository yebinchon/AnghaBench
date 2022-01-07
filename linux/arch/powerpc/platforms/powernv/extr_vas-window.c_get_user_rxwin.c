
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vas_window {scalar_t__ cop; scalar_t__ tx_win; } ;
struct vas_instance {int vas_id; struct vas_window** windows; } ;


 int EINVAL ;
 struct vas_window* ERR_PTR (int ) ;
 scalar_t__ VAS_COP_TYPE_FTW ;
 int decode_pswid (int ,int*,int*) ;

__attribute__((used)) static struct vas_window *get_user_rxwin(struct vas_instance *vinst, u32 pswid)
{
 int vasid, winid;
 struct vas_window *rxwin;

 decode_pswid(pswid, &vasid, &winid);

 if (vinst->vas_id != vasid)
  return ERR_PTR(-EINVAL);

 rxwin = vinst->windows[winid];

 if (!rxwin || rxwin->tx_win || rxwin->cop != VAS_COP_TYPE_FTW)
  return ERR_PTR(-EINVAL);

 return rxwin;
}
