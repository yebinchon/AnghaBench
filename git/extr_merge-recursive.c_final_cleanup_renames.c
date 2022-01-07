
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rename_info {int merge_renames; int head_renames; } ;


 int final_cleanup_rename (int ) ;

__attribute__((used)) static void final_cleanup_renames(struct rename_info *re_info)
{
 final_cleanup_rename(re_info->head_renames);
 final_cleanup_rename(re_info->merge_renames);
}
