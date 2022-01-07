
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shallow_info {int theirs; int ours; } ;


 int free (int ) ;

void clear_shallow_info(struct shallow_info *info)
{
 free(info->ours);
 free(info->theirs);
}
