
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gather {int dummy; } ;


 int* Q ;
 int QBefore ;
 int QBeforeSize ;
 int* QN ;
 int Q_userlist ;
 int* Qf ;
 int* Qs ;
 int assert (int) ;
 int default_gather_on_send (struct gather*,int) ;
 int tl_copy_through (int ,int ) ;
 int tl_fetch_unread () ;
 int tl_store_int (int) ;
 int tl_store_raw_data (int ,int ) ;

int userlist_on_send (struct gather *G, int n) {
  if (!Q_userlist) {
    return default_gather_on_send (G, n);
  } else {
    if (!Qs[n]) {
      return -1;
    } else {
      tl_store_raw_data (QBefore, QBeforeSize);
      int m = Qf[n];
      int cc = 0;
      tl_store_int (Qs[n]);
      while (m != -1) {
        tl_store_int (Q[m]);
        m = QN[m];
        cc ++;
      }
      assert (cc == Qs[n]);
      tl_copy_through (tl_fetch_unread (), 0);
      return 0;
    }
  }
}
