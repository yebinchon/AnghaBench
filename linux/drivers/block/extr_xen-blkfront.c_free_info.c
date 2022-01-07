
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blkfront_info {int info_list; } ;


 int kfree (struct blkfront_info*) ;
 int list_del (int *) ;

__attribute__((used)) static void free_info(struct blkfront_info *info)
{
 list_del(&info->info_list);
 kfree(info);
}
