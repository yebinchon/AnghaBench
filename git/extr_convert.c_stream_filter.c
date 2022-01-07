
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stream_filter {TYPE_1__* vtbl; } ;
struct TYPE_2__ {int (* filter ) (struct stream_filter*,char const*,size_t*,char*,size_t*) ;} ;


 int stub1 (struct stream_filter*,char const*,size_t*,char*,size_t*) ;

int stream_filter(struct stream_filter *filter,
    const char *input, size_t *isize_p,
    char *output, size_t *osize_p)
{
 return filter->vtbl->filter(filter, input, isize_p, output, osize_p);
}
