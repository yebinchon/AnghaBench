
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ annotated_count; int * annotated; scalar_t__ heads_count; int * heads; } ;
typedef TYPE_1__ merge_options ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void merge_options_init(merge_options *opts)
{
 memset(opts, 0, sizeof(*opts));

 opts->heads = ((void*)0);
 opts->heads_count = 0;
 opts->annotated = ((void*)0);
 opts->annotated_count = 0;
}
