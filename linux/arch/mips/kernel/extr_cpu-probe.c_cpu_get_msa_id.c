
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPU_64BIT ;
 int __enable_fpu (int ) ;
 int disable_msa () ;
 int enable_msa () ;
 unsigned long read_c0_status () ;
 unsigned long read_msa_ir () ;
 int write_c0_status (unsigned long) ;

__attribute__((used)) static inline unsigned long cpu_get_msa_id(void)
{
 unsigned long status, msa_id;

 status = read_c0_status();
 __enable_fpu(FPU_64BIT);
 enable_msa();
 msa_id = read_msa_ir();
 disable_msa();
 write_c0_status(status);
 return msa_id;
}
