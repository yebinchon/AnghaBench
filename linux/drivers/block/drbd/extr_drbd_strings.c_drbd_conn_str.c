
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum drbd_conns { ____Placeholder_drbd_conns } drbd_conns ;


 int C_BEHIND ;
 char const** drbd_conn_s_names ;

const char *drbd_conn_str(enum drbd_conns s)
{

 return s > C_BEHIND ? "TOO_LARGE" : drbd_conn_s_names[s];
}
