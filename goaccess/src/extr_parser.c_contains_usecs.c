
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int serve_usecs; } ;


 TYPE_1__ conf ;
 int ht_insert_genstats (char*,int) ;

__attribute__((used)) static void
contains_usecs (void)
{
  if (conf.serve_usecs)
    return;




  conf.serve_usecs = 1;
}
