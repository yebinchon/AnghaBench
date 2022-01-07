
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int XIVE_ESB_FLAG_STORE ;
 long plpar_int_esb (int ,int ,int ,int,unsigned long*) ;

__attribute__((used)) static u64 xive_spapr_esb_rw(u32 lisn, u32 offset, u64 data, bool write)
{
 unsigned long read_data;
 long rc;

 rc = plpar_int_esb(write ? XIVE_ESB_FLAG_STORE : 0,
      lisn, offset, data, &read_data);
 if (rc)
  return -1;

 return write ? 0 : read_data;
}
