
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int H_GET_TERM_CHAR ;
 long H_SUCCESS ;
 int PLPAR_HCALL_BUFSIZE ;
 unsigned long be64_to_cpu (unsigned long) ;
 long plpar_hcall (int ,unsigned long*,int ) ;

int hvc_get_chars(uint32_t vtermno, char *buf, int count)
{
 long ret;
 unsigned long retbuf[PLPAR_HCALL_BUFSIZE];
 unsigned long *lbuf = (unsigned long *)buf;

 ret = plpar_hcall(H_GET_TERM_CHAR, retbuf, vtermno);
 lbuf[0] = be64_to_cpu(retbuf[1]);
 lbuf[1] = be64_to_cpu(retbuf[2]);

 if (ret == H_SUCCESS)
  return retbuf[0];

 return 0;
}
