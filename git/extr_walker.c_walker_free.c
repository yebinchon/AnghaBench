
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct walker {int (* cleanup ) (struct walker*) ;} ;


 int free (struct walker*) ;
 int stub1 (struct walker*) ;

void walker_free(struct walker *walker)
{
 walker->cleanup(walker);
 free(walker);
}
