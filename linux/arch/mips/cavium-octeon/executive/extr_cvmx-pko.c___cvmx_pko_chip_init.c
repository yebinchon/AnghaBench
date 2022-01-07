
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CVMX_PKO_MAX_OUTPUT_QUEUES ;
 int CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID ;
 int OCTEON_CN68XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int __cvmx_pko_port_map_o68 () ;
 int __cvmx_pko_queue_alloc_o68 () ;
 int cvmx_pko_config_port (int ,int,int,int const*) ;

__attribute__((used)) static void __cvmx_pko_chip_init(void)
{
 int i;

 if (OCTEON_IS_MODEL(OCTEON_CN68XX)) {
  __cvmx_pko_port_map_o68();
  __cvmx_pko_queue_alloc_o68();
  return;
 }




 for (i = 0; i < CVMX_PKO_MAX_OUTPUT_QUEUES; i++) {
  const uint64_t priority = 8;

  cvmx_pko_config_port(CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID, i, 1,
         &priority);
 }
}
