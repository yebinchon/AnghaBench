
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aio_connection {struct aio_connection* next; } ;
struct TYPE_2__ {struct aio_connection* first; } ;


 TYPE_1__ aio_list ;
 scalar_t__ check_aio_completion (struct aio_connection*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int verbosity ;

int check_all_aio_completions (void) {
  struct aio_connection *tmp, *tnext;
  int sum = 0;

  if (verbosity > 3) {
    fprintf (stderr, "check_all_aio_completions ()\n");
  }

  for (tmp = aio_list.first; tmp != (struct aio_connection *)&aio_list; tmp = tnext) {
    tnext = tmp->next;

    sum += check_aio_completion (tmp);
  }
  if (verbosity > 1 && sum > 0) {
    fprintf (stderr, "check_all_aio_completions returns %d\n", sum);
  }
  return sum;
}
