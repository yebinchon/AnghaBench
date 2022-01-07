
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int UINT_MAX ;
 int getpid () ;
 int* used_ports_map ;

__attribute__((used)) static uint32_t generate_local_port(void)
{
 int i, n;
 uint32_t pid = getpid() & 0x3FFFFF;

 for (i = 0; i < 32; i++) {
  if (used_ports_map[i] == 0xFFFFFFFF)
   continue;

  for (n = 0; n < 32; n++) {
   if (1UL & (used_ports_map[i] >> n))
    continue;

   used_ports_map[i] |= (1UL << n);
   n += (i * 32);



   return pid + (n << 22);

  }
 }


 return UINT_MAX;
}
