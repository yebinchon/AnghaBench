
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;



__attribute__((used)) static inline u_int ns_to_cycles(u_int ns, u_int khz)
{
 return (ns * khz + 999999) / 1000000;
}
