
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 scalar_t__ NFHD_READ_WRITE ;
 int nf_call (scalar_t__,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ nfhd_id ;

__attribute__((used)) static inline s32 nfhd_read_write(u32 major, u32 minor, u32 rwflag, u32 recno,
      u32 count, u32 buf)
{
 return nf_call(nfhd_id + NFHD_READ_WRITE, major, minor, rwflag, recno,
         count, buf);
}
