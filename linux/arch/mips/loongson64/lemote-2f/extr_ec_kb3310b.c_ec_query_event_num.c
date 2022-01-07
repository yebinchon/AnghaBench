
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_GET_EVENT_NUM ;
 int ec_query_seq (int ) ;

int ec_query_event_num(void)
{
 return ec_query_seq(CMD_GET_EVENT_NUM);
}
