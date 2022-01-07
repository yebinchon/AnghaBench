
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EAGAIN ;
 int EIO ;
 long H_BUSY ;
 int H_PUT_TERM_CHAR ;
 long H_SUCCESS ;
 int MAX_VIO_PUT_CHARS ;
 int cpu_to_be64 (unsigned long) ;
 long plpar_hcall_norets (int ,int ,int,int ,int ) ;

int hvc_put_chars(uint32_t vtermno, const char *buf, int count)
{
 unsigned long *lbuf = (unsigned long *) buf;
 long ret;



 if (count > MAX_VIO_PUT_CHARS)
  count = MAX_VIO_PUT_CHARS;

 ret = plpar_hcall_norets(H_PUT_TERM_CHAR, vtermno, count,
     cpu_to_be64(lbuf[0]),
     cpu_to_be64(lbuf[1]));
 if (ret == H_SUCCESS)
  return count;
 if (ret == H_BUSY)
  return -EAGAIN;
 return -EIO;
}
