
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union drbd_dev_state {scalar_t__ conn; } ;


 scalar_t__ C_AHEAD ;
 scalar_t__ C_WF_BITMAP_S ;

__attribute__((used)) static bool drbd_should_send_out_of_sync(union drbd_dev_state s)
{
 return s.conn == C_AHEAD || s.conn == C_WF_BITMAP_S;


}
