
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int strdup_strings; } ;
struct reflog_walk_info {TYPE_1__ complete_reflogs; } ;


 struct reflog_walk_info* xcalloc (int,int) ;

void init_reflog_walk(struct reflog_walk_info **info)
{
 *info = xcalloc(1, sizeof(struct reflog_walk_info));
 (*info)->complete_reflogs.strdup_strings = 1;
}
