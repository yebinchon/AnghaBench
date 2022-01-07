
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __opal_lpc_inl (unsigned long) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static u32 opal_lpc_inl(unsigned long port)
{
 return le32_to_cpu(__opal_lpc_inl(port));
}
