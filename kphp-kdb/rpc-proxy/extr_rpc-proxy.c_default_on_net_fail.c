
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_ERROR_NO_CONNECTIONS ;
 int tl_fetch_set_error (char*,int ) ;

int default_on_net_fail (void **IP, void **Data) {
  tl_fetch_set_error ("Can not find working connection to target", TL_ERROR_NO_CONNECTIONS);
  return -1;
}
