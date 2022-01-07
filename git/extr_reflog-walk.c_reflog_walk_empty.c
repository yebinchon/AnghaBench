
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reflog_walk_info {int nr; } ;



int reflog_walk_empty(struct reflog_walk_info *info)
{
 return !info || !info->nr;
}
