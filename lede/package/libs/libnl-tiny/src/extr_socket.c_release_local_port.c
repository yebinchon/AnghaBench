
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int UINT_MAX ;
 int* used_ports_map ;

__attribute__((used)) static void release_local_port(uint32_t port)
{
 int nr;

 if (port == UINT_MAX)
  return;

 nr = port >> 22;
 used_ports_map[nr / 32] &= ~(1 << nr % 32);
}
