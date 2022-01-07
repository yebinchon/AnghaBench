
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,unsigned int) ;
 int nf_call (int ,unsigned long) ;
 int stderr_id ;
 unsigned long virt_to_phys (char*) ;

__attribute__((used)) static void nfputs(const char *str, unsigned int count)
{
 char buf[68];
 unsigned long phys = virt_to_phys(buf);

 buf[64] = 0;
 while (count > 64) {
  memcpy(buf, str, 64);
  nf_call(stderr_id, phys);
  str += 64;
  count -= 64;
 }
 memcpy(buf, str, count);
 buf[count] = 0;
 nf_call(stderr_id, phys);
}
