
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partition {int nr_sects; } ;
typedef int sector_t ;


 int get_unaligned_le32 (int *) ;

__attribute__((used)) static inline sector_t nr_sects(struct partition *p)
{
 return (sector_t)get_unaligned_le32(&p->nr_sects);
}
