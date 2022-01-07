
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ qid7; scalar_t__ idx3; } ;
union cvmx_pko_reg_queue_ptrs1 {scalar_t__ u64; TYPE_1__ s; } ;
struct TYPE_4__ {int tail; int static_p; int static_q; int s_tail; int qos_mask; int buf_ptr; scalar_t__ queue; scalar_t__ port; scalar_t__ index; } ;
union cvmx_pko_mem_queue_ptrs {scalar_t__ u64; TYPE_2__ s; } ;
typedef scalar_t__ uint64_t ;
typedef int cvmx_pko_status_t ;
typedef int cvmx_cmd_queue_result_t ;





 int CVMX_CMD_QUEUE_PKO (scalar_t__) ;
 int CVMX_CMD_QUEUE_SUCCESS ;
 int CVMX_FPA_OUTPUT_BUFFER_POOL ;
 scalar_t__ CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE ;
 int CVMX_PKO_CMD_QUEUE_INIT_ERROR ;
 int CVMX_PKO_COMMAND_BUFFER_SIZE_ADJUST ;
 int CVMX_PKO_INVALID_PORT ;
 int CVMX_PKO_INVALID_PRIORITY ;
 int CVMX_PKO_INVALID_QUEUE ;
 scalar_t__ CVMX_PKO_MAX_OUTPUT_QUEUES ;
 int CVMX_PKO_MAX_QUEUE_DEPTH ;
 int CVMX_PKO_MEM_QUEUE_PTRS ;
 scalar_t__ CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID ;
 int CVMX_PKO_NO_MEMORY ;
 scalar_t__ CVMX_PKO_NUM_OUTPUT_PORTS ;
 int CVMX_PKO_PORT_ALREADY_SETUP ;
 int CVMX_PKO_QUEUES_PER_PORT_INTERFACE0 ;
 int CVMX_PKO_QUEUES_PER_PORT_INTERFACE1 ;

 int CVMX_PKO_REG_QUEUE_PTRS1 ;
 int CVMX_PKO_SUCCESS ;
 int CVMX_SYNCWS ;
 int OCTEON_CN3XXX ;
 int OCTEON_CN68XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 scalar_t__ cvmx_cmd_queue_buffer (int ) ;
 int cvmx_cmd_queue_initialize (int ,int ,int ,scalar_t__) ;
 int cvmx_dprintf (char*,...) ;
 int cvmx_octeon_is_pass1 () ;
 int cvmx_ptr_to_phys (scalar_t__*) ;
 int cvmx_write_csr (int ,scalar_t__) ;

cvmx_pko_status_t cvmx_pko_config_port(uint64_t port, uint64_t base_queue,
           uint64_t num_queues,
           const uint64_t priority[])
{
 cvmx_pko_status_t result_code;
 uint64_t queue;
 union cvmx_pko_mem_queue_ptrs config;
 union cvmx_pko_reg_queue_ptrs1 config1;
 int static_priority_base = -1;
 int static_priority_end = -1;

 if (OCTEON_IS_MODEL(OCTEON_CN68XX))
  return CVMX_PKO_SUCCESS;

 if ((port >= CVMX_PKO_NUM_OUTPUT_PORTS)
     && (port != CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID)) {
  cvmx_dprintf("ERROR: cvmx_pko_config_port: Invalid port %llu\n",
        (unsigned long long)port);
  return CVMX_PKO_INVALID_PORT;
 }

 if (base_queue + num_queues > CVMX_PKO_MAX_OUTPUT_QUEUES) {
  cvmx_dprintf
      ("ERROR: cvmx_pko_config_port: Invalid queue range %llu\n",
       (unsigned long long)(base_queue + num_queues));
  return CVMX_PKO_INVALID_QUEUE;
 }

 if (port != CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID) {





  for (queue = 0; queue < num_queues; queue++) {

   if (static_priority_base == -1
       && priority[queue] ==
       128)
    static_priority_base = queue;

   if (static_priority_base != -1
       && static_priority_end == -1
       && priority[queue] != 128
       && queue)
    static_priority_end = queue - 1;
   else if (static_priority_base != -1
     && static_priority_end == -1
     && queue == num_queues - 1)

    static_priority_end = queue;






   if (static_priority_end != -1
       && (int)queue > static_priority_end
       && priority[queue] ==
       128) {
    cvmx_dprintf("ERROR: cvmx_pko_config_port: "
          "Static priority queues aren't "
          "contiguous or don't start at "
          "base queue. q: %d, eq: %d\n",
     (int)queue, static_priority_end);
    return CVMX_PKO_INVALID_PRIORITY;
   }
  }
  if (static_priority_base > 0) {
   cvmx_dprintf("ERROR: cvmx_pko_config_port: Static "
         "priority queues don't start at base "
         "queue. sq: %d\n",
    static_priority_base);
   return CVMX_PKO_INVALID_PRIORITY;
  }





 }






 result_code = CVMX_PKO_SUCCESS;







 for (queue = 0; queue < num_queues; queue++) {
  uint64_t *buf_ptr = ((void*)0);

  config1.u64 = 0;
  config1.s.idx3 = queue >> 3;
  config1.s.qid7 = (base_queue + queue) >> 7;

  config.u64 = 0;
  config.s.tail = queue == (num_queues - 1);
  config.s.index = queue;
  config.s.port = port;
  config.s.queue = base_queue + queue;

  if (!cvmx_octeon_is_pass1()) {
   config.s.static_p = static_priority_base >= 0;
   config.s.static_q = (int)queue <= static_priority_end;
   config.s.s_tail = (int)queue == static_priority_end;
  }





  switch ((int)priority[queue]) {
  case 0:
   config.s.qos_mask = 0x00;
   break;
  case 1:
   config.s.qos_mask = 0x01;
   break;
  case 2:
   config.s.qos_mask = 0x11;
   break;
  case 3:
   config.s.qos_mask = 0x49;
   break;
  case 4:
   config.s.qos_mask = 0x55;
   break;
  case 5:
   config.s.qos_mask = 0x57;
   break;
  case 6:
   config.s.qos_mask = 0x77;
   break;
  case 7:
   config.s.qos_mask = 0x7f;
   break;
  case 8:
   config.s.qos_mask = 0xff;
   break;
  case 128:
   if (!cvmx_octeon_is_pass1()) {
    config.s.qos_mask = 0xff;
    break;
   }

  default:
   cvmx_dprintf("ERROR: cvmx_pko_config_port: Invalid "
         "priority %llu\n",
    (unsigned long long)priority[queue]);
   config.s.qos_mask = 0xff;
   result_code = CVMX_PKO_INVALID_PRIORITY;
   break;
  }

  if (port != CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID) {
   cvmx_cmd_queue_result_t cmd_res =
       cvmx_cmd_queue_initialize(CVMX_CMD_QUEUE_PKO
            (base_queue + queue),
            CVMX_PKO_MAX_QUEUE_DEPTH,
            CVMX_FPA_OUTPUT_BUFFER_POOL,
            CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE
            -
            CVMX_PKO_COMMAND_BUFFER_SIZE_ADJUST
            * 8);
   if (cmd_res != CVMX_CMD_QUEUE_SUCCESS) {
    switch (cmd_res) {
    case 129:
     cvmx_dprintf("ERROR: "
           "cvmx_pko_config_port: "
           "Unable to allocate "
           "output buffer.\n");
     return CVMX_PKO_NO_MEMORY;
    case 131:
     cvmx_dprintf
         ("ERROR: cvmx_pko_config_port: Port already setup.\n");
     return CVMX_PKO_PORT_ALREADY_SETUP;
    case 130:
    default:
     cvmx_dprintf
         ("ERROR: cvmx_pko_config_port: Command queue initialization failed.\n");
     return CVMX_PKO_CMD_QUEUE_INIT_ERROR;
    }
   }

   buf_ptr =
       (uint64_t *)
       cvmx_cmd_queue_buffer(CVMX_CMD_QUEUE_PKO
        (base_queue + queue));
   config.s.buf_ptr = cvmx_ptr_to_phys(buf_ptr);
  } else
   config.s.buf_ptr = 0;

  CVMX_SYNCWS;

  if (!OCTEON_IS_MODEL(OCTEON_CN3XXX))
   cvmx_write_csr(CVMX_PKO_REG_QUEUE_PTRS1, config1.u64);
  cvmx_write_csr(CVMX_PKO_MEM_QUEUE_PTRS, config.u64);
 }

 return result_code;
}
