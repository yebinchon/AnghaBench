
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mode; } ;
typedef TYPE_1__ git_filter_source ;
typedef int git_filter_mode_t ;



git_filter_mode_t git_filter_source_mode(const git_filter_source *src)
{
 return src->mode;
}
