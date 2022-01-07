
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
 char* trace_seq_buffer_ptr (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*) ;
 int trace_seq_putc (struct trace_seq*,int ) ;

const char *
libata_trace_parse_subcmd(struct trace_seq *p, unsigned char cmd,
     unsigned char feature, unsigned char hob_nsect)
{
 const char *ret = trace_seq_buffer_ptr(p);

 switch (cmd) {
 case 145:
  switch (hob_nsect & 0x5f) {
  case 140:
   trace_seq_printf(p, " READ_LOG_DMA_EXT");
   break;
  case 139:
   trace_seq_printf(p, " ZAC_MGMT_IN");
   break;
  }
  break;
 case 144:
  switch (hob_nsect & 0x5f) {
  case 137:
   trace_seq_printf(p, " WRITE_LOG_DMA_EXT");
   break;
  case 138:
   trace_seq_printf(p, " DATASET_MANAGEMENT");
   break;
  }
  break;
 case 143:
  switch (feature) {
  case 136:
   trace_seq_printf(p, " ABORT_QUEUE");
   break;
  case 135:
   trace_seq_printf(p, " SET_FEATURES");
   break;
  case 133:
   trace_seq_printf(p, " ZERO_EXT");
   break;
  case 134:
   trace_seq_printf(p, " ZAC_MGMT_OUT");
   break;
  }
  break;
 case 142:
  switch (feature) {
  case 132:
   trace_seq_printf(p, " REPORT_ZONES");
   break;
  }
  break;
 case 141:
  switch (feature) {
  case 131:
   trace_seq_printf(p, " CLOSE_ZONE");
   break;
  case 130:
   trace_seq_printf(p, " FINISH_ZONE");
   break;
  case 129:
   trace_seq_printf(p, " OPEN_ZONE");
   break;
  case 128:
   trace_seq_printf(p, " RESET_WRITE_POINTER");
   break;
  }
  break;
 }
 trace_seq_putc(p, 0);

 return ret;
}
