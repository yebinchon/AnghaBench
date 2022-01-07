
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;


 int MAX_RDR_WORDS ;
 scalar_t__ ONYX_INTF ;
 int perf_intrigue_disable_perf_counters () ;
 scalar_t__ perf_processor_interface ;
 int perf_rdr_clear (int) ;
 int perf_rdr_read_ubuf (int,int*) ;
 int perf_rdr_write (int,int*) ;

__attribute__((used)) static int perf_stop_counters(uint32_t *raddr)
{
 uint64_t userbuf[MAX_RDR_WORDS];


 perf_intrigue_disable_perf_counters();

 if (perf_processor_interface == ONYX_INTF) {
  uint64_t tmp64;



  if (!perf_rdr_read_ubuf(16, userbuf))
   return -13;


  tmp64 = (userbuf[21] << 22) & 0x00000000ffc00000;
  tmp64 |= (userbuf[22] >> 42) & 0x00000000003fffff;

  tmp64 |= (userbuf[22] >> 10) & 0x0000000080000000;
  raddr[0] = (uint32_t)tmp64;


  tmp64 = (userbuf[22] >> 9) & 0x00000000ffffffff;

  tmp64 |= (userbuf[22] << 23) & 0x0000000080000000;
  raddr[1] = (uint32_t)tmp64;


  tmp64 = (userbuf[22] << 24) & 0x00000000ff000000;
  tmp64 |= (userbuf[23] >> 40) & 0x0000000000ffffff;

  tmp64 |= (userbuf[23] >> 8) & 0x0000000080000000;
  raddr[2] = (uint32_t)tmp64;


  tmp64 = (userbuf[23] >> 7) & 0x00000000ffffffff;

  tmp64 |= (userbuf[23] << 25) & 0x0000000080000000;
  raddr[3] = (uint32_t)tmp64;
  userbuf[21] &= 0xfffffffffffffc00ul;
  userbuf[22] = 0;
  userbuf[23] = 0;





  perf_rdr_write(16, userbuf);
 } else {




  if (!perf_rdr_read_ubuf(15, userbuf)) {
   return -13;
  }




  perf_rdr_clear(15);




  raddr[0] = (uint32_t)((userbuf[0] >> 32) & 0x00000000ffffffffUL);
  raddr[1] = (uint32_t)(userbuf[0] & 0x00000000ffffffffUL);
  raddr[2] = (uint32_t)((userbuf[1] >> 32) & 0x00000000ffffffffUL);
  raddr[3] = (uint32_t)(userbuf[1] & 0x00000000ffffffffUL);
 }

 return 0;
}
