
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int __opal_lpc_inw (unsigned long) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static u16 opal_lpc_inw(unsigned long port)
{
 return le16_to_cpu(__opal_lpc_inw(port));
}
