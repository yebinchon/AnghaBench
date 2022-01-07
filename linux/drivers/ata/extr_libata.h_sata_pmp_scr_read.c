
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ata_link {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static inline int sata_pmp_scr_read(struct ata_link *link, int reg, u32 *val)
{
 return -EINVAL;
}
