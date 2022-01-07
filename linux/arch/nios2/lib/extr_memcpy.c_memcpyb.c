
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BYTE_COPY_FWD (unsigned long,unsigned long,unsigned int) ;

void *memcpyb(void *dstpp, const void *srcpp, unsigned len)
{
 unsigned long int dstp = (long int) dstpp;
 unsigned long int srcp = (long int) srcpp;

 BYTE_COPY_FWD(dstp, srcp, len);

 return dstpp;
}
