
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* index_file; } ;


 int BUG (char*) ;
 TYPE_1__* the_repository ;

char *get_index_file(void)
{
 if (!the_repository->index_file)
  BUG("git environment hasn't been setup");
 return the_repository->index_file;
}
