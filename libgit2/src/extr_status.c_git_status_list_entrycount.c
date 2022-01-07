
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t length; } ;
struct TYPE_6__ {TYPE_1__ paired; } ;
typedef TYPE_2__ git_status_list ;


 int assert (TYPE_2__*) ;

size_t git_status_list_entrycount(git_status_list *status)
{
 assert(status);

 return status->paired.length;
}
