
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _secure_send_on_net_fail (void**,void**,int ) ;

int secure_send_on_net_fail (void **IP, void **Data) {
  return _secure_send_on_net_fail (IP, Data, 0);
}
