
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int MBI_ENABLE ;

__attribute__((used)) static inline u32 iosf_mbi_form_mcr(u8 op, u8 port, u8 offset)
{
 return (op << 24) | (port << 16) | (offset << 8) | MBI_ENABLE;
}
