
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pathspec {TYPE_1__* items; } ;
struct TYPE_2__ {int match; } ;


 unsigned long common_prefix_len (struct pathspec const*) ;
 char* xmemdupz (int ,unsigned long) ;

char *common_prefix(const struct pathspec *pathspec)
{
 unsigned long len = common_prefix_len(pathspec);

 return len ? xmemdupz(pathspec->items[0].match, len) : ((void*)0);
}
