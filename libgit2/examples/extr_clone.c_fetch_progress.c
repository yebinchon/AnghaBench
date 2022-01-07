
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fetch_progress; } ;
typedef TYPE_1__ progress_data ;
typedef int git_indexer_progress ;


 int print_progress (TYPE_1__*) ;

__attribute__((used)) static int fetch_progress(const git_indexer_progress *stats, void *payload)
{
 progress_data *pd = (progress_data*)payload;
 pd->fetch_progress = *stats;
 print_progress(pd);
 return 0;
}
