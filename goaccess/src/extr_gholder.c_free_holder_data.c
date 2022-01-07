
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* protocol; struct TYPE_5__* method; struct TYPE_5__* data; } ;
struct TYPE_4__ {TYPE_3__* metrics; int * sub_list; } ;
typedef TYPE_1__ GHolderItem ;


 int delete_sub_list (int *) ;
 int free (TYPE_3__*) ;

__attribute__((used)) static void
free_holder_data (GHolderItem item)
{
  if (item.sub_list != ((void*)0))
    delete_sub_list (item.sub_list);
  if (item.metrics->data != ((void*)0))
    free (item.metrics->data);
  if (item.metrics->method != ((void*)0))
    free (item.metrics->method);
  if (item.metrics->protocol != ((void*)0))
    free (item.metrics->protocol);
  if (item.metrics != ((void*)0))
    free (item.metrics);
}
