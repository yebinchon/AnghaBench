
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ioport_map (unsigned long,int) ;
 int ioread32 (int ) ;

u32 inl(unsigned long port)
{
 return ioread32(ioport_map(port, 4));
}
