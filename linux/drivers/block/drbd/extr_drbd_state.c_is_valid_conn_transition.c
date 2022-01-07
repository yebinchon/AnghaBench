
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum drbd_state_rv { ____Placeholder_drbd_state_rv } drbd_state_rv ;
typedef enum drbd_conns { ____Placeholder_drbd_conns } drbd_conns ;


 int C_CONNECTED ;
 int C_DISCONNECTING ;
 int C_STANDALONE ;
 int C_TEAR_DOWN ;
 int C_TIMEOUT ;
 int C_UNCONNECTED ;
 int C_WF_REPORT_PARAMS ;
 int SS_ALREADY_STANDALONE ;
 int SS_IN_TRANSIENT_STATE ;
 int SS_NEED_CONNECTION ;
 int SS_NOTHING_TO_DO ;
 int SS_SUCCESS ;

__attribute__((used)) static enum drbd_state_rv
is_valid_conn_transition(enum drbd_conns oc, enum drbd_conns nc)
{

 if (oc == nc)
  return SS_NOTHING_TO_DO;


 if (oc == C_STANDALONE && nc == C_DISCONNECTING)
  return SS_ALREADY_STANDALONE;


 if (oc == C_STANDALONE && nc != C_UNCONNECTED)
  return SS_NEED_CONNECTION;



 if (oc < C_WF_REPORT_PARAMS && nc >= C_CONNECTED)
  return SS_NEED_CONNECTION;


 if (oc >= C_TIMEOUT && oc <= C_TEAR_DOWN && nc != C_UNCONNECTED && nc != C_DISCONNECTING)
  return SS_IN_TRANSIENT_STATE;


 if (oc == C_DISCONNECTING && nc != C_STANDALONE)
  return SS_IN_TRANSIENT_STATE;

 return SS_SUCCESS;
}
