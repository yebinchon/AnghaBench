
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int read_c0_errctl () ;
 int write_c0_errctl (unsigned int) ;

__attribute__((used)) static unsigned int bis_c0_errctl(unsigned int set)
{
 unsigned int res;
 res = read_c0_errctl();
 write_c0_errctl(res | set);
 return res;
}
