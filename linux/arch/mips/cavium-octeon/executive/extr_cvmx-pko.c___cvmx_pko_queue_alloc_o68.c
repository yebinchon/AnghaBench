
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cvmx_pko_iport_config (int) ;

__attribute__((used)) static void __cvmx_pko_queue_alloc_o68(void)
{
 int port;

 for (port = 0; port < 48; port++)
  __cvmx_pko_iport_config(port);
}
