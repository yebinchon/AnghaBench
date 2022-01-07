
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cvmx_pko_initialize_local () ;

int cvmx_helper_initialize_packet_io_local(void)
{
 return cvmx_pko_initialize_local();
}
