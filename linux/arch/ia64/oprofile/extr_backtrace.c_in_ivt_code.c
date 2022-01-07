
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u_long ;



__attribute__((used)) static __inline__ int in_ivt_code(unsigned long pc)
{
 extern char ia64_ivt[];
 return (pc >= (u_long)ia64_ivt && pc < (u_long)ia64_ivt+32768);
}
