
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _secure_receive_on_alarm (void**,void**,int) ;

int secure_receive_on_alarm_binlog (void **IP, void **Data) {
  return _secure_receive_on_alarm (IP, Data, 1);
}
