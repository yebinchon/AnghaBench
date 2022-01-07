
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_device {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static inline int sata_pmp_attach(struct ata_device *dev)
{
 return -EINVAL;
}
