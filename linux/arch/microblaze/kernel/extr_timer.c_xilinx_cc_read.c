
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cyclecounter {int dummy; } ;


 int xilinx_read (int *) ;

__attribute__((used)) static u64 xilinx_cc_read(const struct cyclecounter *cc)
{
 return xilinx_read(((void*)0));
}
