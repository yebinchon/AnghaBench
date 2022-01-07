
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union drbd_dev_state {scalar_t__ pdsk; scalar_t__ conn; } ;


 scalar_t__ C_AHEAD ;
 scalar_t__ C_WF_BITMAP_T ;
 scalar_t__ D_INCONSISTENT ;
 scalar_t__ D_UP_TO_DATE ;

bool drbd_should_do_remote(union drbd_dev_state s)
{
 return s.pdsk == D_UP_TO_DATE ||
  (s.pdsk >= D_INCONSISTENT &&
   s.conn >= C_WF_BITMAP_T &&
   s.conn < C_AHEAD);



}
