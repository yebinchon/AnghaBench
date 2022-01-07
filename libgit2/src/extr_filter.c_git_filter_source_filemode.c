
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int filemode; } ;
typedef TYPE_1__ git_filter_source ;



uint16_t git_filter_source_filemode(const git_filter_source *src)
{
 return src->filemode;
}
