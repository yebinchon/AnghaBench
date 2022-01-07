
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int CSR_CYCLE ;
 int CSR_INSTRET ;
 int EINVAL ;
 int RISCV_MAX_COUNTERS ;


 int WARN_ON_ONCE (int) ;
 int csr_read (int ) ;

__attribute__((used)) static inline u64 read_counter(int idx)
{
 u64 val = 0;

 switch (idx) {
 case 129:
  val = csr_read(CSR_CYCLE);
  break;
 case 128:
  val = csr_read(CSR_INSTRET);
  break;
 default:
  WARN_ON_ONCE(idx < 0 || idx > RISCV_MAX_COUNTERS);
  return -EINVAL;
 }

 return val;
}
