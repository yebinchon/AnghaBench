
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar934x_nfc {unsigned int base; } ;


 int __raw_writel (int ,unsigned int) ;

__attribute__((used)) static inline void
ar934x_nfc_wr(struct ar934x_nfc *nfc, unsigned reg, u32 val)
{
 __raw_writel(val, nfc->base + reg);
}
