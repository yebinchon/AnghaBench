
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct process_id {int dummy; } ;
struct TYPE_6__ {scalar_t__ ip; scalar_t__ port; scalar_t__ pid; scalar_t__ utime; } ;
typedef TYPE_1__ npid_t ;


 int memcmp (TYPE_1__*,TYPE_1__*,int) ;

int matches_pid (npid_t *X, npid_t *Y) {
  if (!memcmp (X, Y, sizeof (struct process_id))) {
    return 2;
  } else if ((!Y->ip || X->ip == Y->ip) && (!Y->port || X->port == Y->port) && (!Y->pid || X->pid == Y->pid) && (!Y->utime || X->utime == Y->utime)) {
    return 1;
  } else {
    return 0;
  }
}
