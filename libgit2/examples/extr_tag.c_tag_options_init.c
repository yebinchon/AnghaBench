
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ force; scalar_t__ num_lines; int * target; int * tag_name; int * pattern; int * message; } ;
typedef TYPE_1__ tag_options ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void tag_options_init(tag_options *opts)
{
 memset(opts, 0, sizeof(*opts));

 opts->message = ((void*)0);
 opts->pattern = ((void*)0);
 opts->tag_name = ((void*)0);
 opts->target = ((void*)0);
 opts->num_lines = 0;
 opts->force = 0;
}
