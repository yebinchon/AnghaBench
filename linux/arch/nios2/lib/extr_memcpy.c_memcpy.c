
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BYTE_COPY_FWD (unsigned long,unsigned long,size_t) ;
 unsigned long OPSIZ ;
 size_t OP_T_THRES ;
 int WORD_COPY_FWD (unsigned long,unsigned long,size_t,size_t) ;

void *memcpy(void *dstpp, const void *srcpp, size_t len)
{
 unsigned long int dstp = (long int) dstpp;
 unsigned long int srcp = (long int) srcpp;




 if (len >= OP_T_THRES) {

  len -= (-dstp) % OPSIZ;
  BYTE_COPY_FWD(dstp, srcp, (-dstp) % OPSIZ);
  WORD_COPY_FWD(dstp, srcp, len, len);


 }


 BYTE_COPY_FWD(dstp, srcp, len);

 return dstpp;
}
