
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t completed_steps; size_t total_steps; char const* path; } ;
typedef TYPE_1__ progress_data ;


 int print_progress (TYPE_1__*) ;

__attribute__((used)) static void checkout_progress(const char *path, size_t cur, size_t tot, void *payload)
{
 progress_data *pd = (progress_data*)payload;
 pd->completed_steps = cur;
 pd->total_steps = tot;
 pd->path = path;
 print_progress(pd);
}
