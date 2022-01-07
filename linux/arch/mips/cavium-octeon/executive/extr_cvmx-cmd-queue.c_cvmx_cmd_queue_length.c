
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int doorbell; } ;
union cvmx_pko_mem_debug9 {TYPE_2__ cn38xx; void* u64; } ;
struct TYPE_6__ {int doorbell; } ;
union cvmx_pko_mem_debug8 {TYPE_3__ cn50xx; void* u64; } ;
struct TYPE_4__ {int dbell; } ;
union cvmx_npei_dmax_counts {TYPE_1__ s; void* u64; } ;
typedef int cvmx_cmd_queue_id_t ;





 int CVMX_CMD_QUEUE_INVALID_PARAM ;



 scalar_t__ CVMX_ENABLE_PARAMETER_CHECKING ;
 int CVMX_PEXP_NPEI_DMAX_COUNTS (int) ;
 int CVMX_PKO_MEM_DEBUG8 ;
 int CVMX_PKO_MEM_DEBUG9 ;
 int CVMX_PKO_REG_READ_IDX ;
 int OCTEON_CN3XXX ;
 int OCTEON_IS_MODEL (int ) ;
 int * __cvmx_cmd_queue_get_state (int) ;
 void* cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int) ;

int cvmx_cmd_queue_length(cvmx_cmd_queue_id_t queue_id)
{
 if (CVMX_ENABLE_PARAMETER_CHECKING) {
  if (__cvmx_cmd_queue_get_state(queue_id) == ((void*)0))
   return CVMX_CMD_QUEUE_INVALID_PARAM;
 }





 switch ((cvmx_cmd_queue_id_t) (queue_id & 0xff0000)) {
 case 130:






  cvmx_write_csr(CVMX_PKO_REG_READ_IDX, queue_id & 0xffff);
  if (OCTEON_IS_MODEL(OCTEON_CN3XXX)) {
   union cvmx_pko_mem_debug9 debug9;
   debug9.u64 = cvmx_read_csr(CVMX_PKO_MEM_DEBUG9);
   return debug9.cn38xx.doorbell;
  } else {
   union cvmx_pko_mem_debug8 debug8;
   debug8.u64 = cvmx_read_csr(CVMX_PKO_MEM_DEBUG8);
   return debug8.cn50xx.doorbell;
  }
 case 128:
 case 133:
 case 129:

  return 0;
 case 132:
  {
   union cvmx_npei_dmax_counts dmax_counts;
   dmax_counts.u64 =
       cvmx_read_csr(CVMX_PEXP_NPEI_DMAX_COUNTS
       (queue_id & 0x7));
   return dmax_counts.s.dbell;
  }
 case 131:
  return CVMX_CMD_QUEUE_INVALID_PARAM;
 }
 return CVMX_CMD_QUEUE_INVALID_PARAM;
}
