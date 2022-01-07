
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idt77252_dev {int dummy; } ;


 int SAR_REG_STAT ;
 int readl (int ) ;

__attribute__((used)) static __inline__ int
idt77252_fbq_full(struct idt77252_dev *card, int queue)
{
 return (readl(SAR_REG_STAT) >> (16 + (queue << 2))) == 0x0f;
}
