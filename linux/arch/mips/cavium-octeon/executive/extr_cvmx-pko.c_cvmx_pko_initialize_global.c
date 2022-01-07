
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int pool; } ;
union cvmx_pko_reg_cmd_buf {int u64; TYPE_1__ s; } ;


 int CVMX_FPA_OUTPUT_BUFFER_POOL ;
 int CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE ;
 int CVMX_PKO_REG_CMD_BUF ;
 int CVMX_PKO_REG_QUEUE_MODE ;
 int OCTEON_CN38XX ;
 int OCTEON_CN52XX ;
 int OCTEON_CN56XX ;
 int OCTEON_CN58XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int __cvmx_pko_chip_init () ;
 int cvmx_helper_get_last_ipd_port (int) ;
 int cvmx_helper_get_number_of_interfaces () ;
 int cvmx_pko_get_base_queue (int) ;
 int cvmx_pko_get_num_queues (int) ;
 int cvmx_write_csr (int ,int) ;

void cvmx_pko_initialize_global(void)
{
 union cvmx_pko_reg_cmd_buf config;






 config.u64 = 0;
 config.s.pool = CVMX_FPA_OUTPUT_BUFFER_POOL;
 config.s.size = CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE / 8 - 1;

 cvmx_write_csr(CVMX_PKO_REG_CMD_BUF, config.u64);




 __cvmx_pko_chip_init();





 if (OCTEON_IS_MODEL(OCTEON_CN38XX) || OCTEON_IS_MODEL(OCTEON_CN58XX)
     || OCTEON_IS_MODEL(OCTEON_CN56XX)
     || OCTEON_IS_MODEL(OCTEON_CN52XX)) {
  int num_interfaces = cvmx_helper_get_number_of_interfaces();
  int last_port =
      cvmx_helper_get_last_ipd_port(num_interfaces - 1);
  int max_queues =
      cvmx_pko_get_base_queue(last_port) +
      cvmx_pko_get_num_queues(last_port);
  if (OCTEON_IS_MODEL(OCTEON_CN38XX)) {
   if (max_queues <= 32)
    cvmx_write_csr(CVMX_PKO_REG_QUEUE_MODE, 2);
   else if (max_queues <= 64)
    cvmx_write_csr(CVMX_PKO_REG_QUEUE_MODE, 1);
  } else {
   if (max_queues <= 64)
    cvmx_write_csr(CVMX_PKO_REG_QUEUE_MODE, 2);
   else if (max_queues <= 128)
    cvmx_write_csr(CVMX_PKO_REG_QUEUE_MODE, 1);
  }
 }
}
