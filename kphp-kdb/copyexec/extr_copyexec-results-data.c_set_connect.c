
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lev_copyexec_result_connect {int hostname_length; int hostname; int pid; int ip; int volume_id; int random_tag; } ;
struct TYPE_3__ {scalar_t__ hostname; int last_action_time; int pid; int ip; int volume_id; } ;
typedef TYPE_1__ host_t ;


 int exit (int) ;
 TYPE_1__* get_host_by_random_tag (int ,int) ;
 int kprintf (char*,scalar_t__,int,int ,int ) ;
 int log_cur_pos () ;
 scalar_t__ memcmp (scalar_t__,int ,int const) ;
 int memcpy (scalar_t__,int ,int const) ;
 int now ;
 scalar_t__ strlen (scalar_t__) ;
 scalar_t__ zmalloc0 (int const) ;

__attribute__((used)) static int set_connect (struct lev_copyexec_result_connect *E) {
  host_t *H = get_host_by_random_tag (E->random_tag, 1);
  H->volume_id = E->volume_id;
  H->ip = E->ip;
  H->pid = E->pid;
  H->last_action_time = now;
  const int l = E->hostname_length, old_l = (H->hostname) ? (int) strlen (H->hostname) : -1;
  if (l != old_l || memcmp (H->hostname, E->hostname, l)) {
    if (H->hostname) {
      kprintf ("set_connect: hostname didn't matched. Old hostname = %s, new hostname = %.*s. (log_cur_pos: %lld)\n", H->hostname, E->hostname_length, E->hostname, log_cur_pos ());
      exit (1);
    }
    H->hostname = zmalloc0 (l + 1);
    memcpy (H->hostname, E->hostname, l);
  }
  return 0;
}
