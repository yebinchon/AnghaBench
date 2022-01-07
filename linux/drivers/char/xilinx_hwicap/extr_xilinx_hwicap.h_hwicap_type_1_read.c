
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int XHI_OP_READ ;
 int XHI_OP_SHIFT ;
 int XHI_REGISTER_SHIFT ;
 int XHI_TYPE_1 ;
 int XHI_TYPE_SHIFT ;

__attribute__((used)) static inline u32 hwicap_type_1_read(u32 reg)
{
 return (XHI_TYPE_1 << XHI_TYPE_SHIFT) |
  (reg << XHI_REGISTER_SHIFT) |
  (XHI_OP_READ << XHI_OP_SHIFT);
}
