
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static inline int mtd_get_squashfs_len(struct mtd_info *master,
           size_t offset,
           size_t *squashfs_len)
{
 return -ENODEV;
}
