
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long orc_ip(const int *ip)
{
 return (unsigned long)ip + *ip;
}
