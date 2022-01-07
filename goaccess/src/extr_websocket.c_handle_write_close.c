
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WSServer ;
typedef int WSClient ;


 int handle_tcp_close (int,int *,int *) ;

__attribute__((used)) static void
handle_write_close (int conn, WSClient * client, WSServer * server)
{
  handle_tcp_close (conn, client, server);
}
