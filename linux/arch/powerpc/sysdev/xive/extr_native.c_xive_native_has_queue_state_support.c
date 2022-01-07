
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPAL_XIVE_GET_QUEUE_STATE ;
 int OPAL_XIVE_SET_QUEUE_STATE ;
 scalar_t__ opal_check_token (int ) ;

bool xive_native_has_queue_state_support(void)
{
 return opal_check_token(OPAL_XIVE_GET_QUEUE_STATE) &&
  opal_check_token(OPAL_XIVE_SET_QUEUE_STATE);
}
