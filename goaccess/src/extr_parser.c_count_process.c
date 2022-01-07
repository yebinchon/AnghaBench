
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int processed; } ;
typedef TYPE_1__ GLog ;


 int ht_insert_genstats (char*,int) ;
 int lock_spinner () ;
 int unlock_spinner () ;

__attribute__((used)) static void
count_process (GLog * glog)
{
  lock_spinner ();
  glog->processed++;



  unlock_spinner ();
}
