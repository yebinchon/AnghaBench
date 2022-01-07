
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int NUM_SPU_BITS_TRBUF ;
 int SPUS_PER_TB_ENTRY ;
 int SPU_PC_MASK ;
 int TRACE_ARRAY_SIZE ;
 int cbe_read_trace_buffer (int,int*) ;
 int* samples ;

__attribute__((used)) static void spu_pc_extract(int cpu, int entry)
{

 u64 trace_buffer[2];
 u64 spu_mask;
 int spu;

 spu_mask = SPU_PC_MASK;
 cbe_read_trace_buffer(cpu, trace_buffer);

 for (spu = SPUS_PER_TB_ENTRY-1; spu >= 0; spu--) {



  samples[spu * TRACE_ARRAY_SIZE + entry]
   = (spu_mask & trace_buffer[0]) << 2;
  samples[(spu + SPUS_PER_TB_ENTRY) * TRACE_ARRAY_SIZE + entry]
   = (spu_mask & trace_buffer[1]) << 2;

  trace_buffer[0] = trace_buffer[0] >> NUM_SPU_BITS_TRBUF;
  trace_buffer[1] = trace_buffer[1] >> NUM_SPU_BITS_TRBUF;
 }
}
