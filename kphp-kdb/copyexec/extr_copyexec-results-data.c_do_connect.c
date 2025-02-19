
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct lev_copyexec_result_connect {unsigned long long random_tag; unsigned long long volume_id; int hostname_length; int pid; int hostname; int ip; } ;
struct connection {int dummy; } ;
struct TYPE_4__ {int ip; int last_action_time; } ;
typedef TYPE_1__ host_t ;


 int LEV_COPYEXEC_RESULT_CONNECT ;
 struct lev_copyexec_result_connect* alloc_log_event (int ,int,int ) ;
 int assert (int ) ;
 int get_host_on_connect (struct connection*,unsigned long long,unsigned long long,char const* const,int,TYPE_1__**) ;
 int memcpy (int ,char const* const,int) ;
 int now ;
 int strlen (char const* const) ;
 int vkprintf (int,char*,int,...) ;

int do_connect (struct connection *c, unsigned long long volume_id, unsigned long long random_tag, const char *const hostname, int pid, host_t **R) {
  vkprintf (3, "do_connect (c: %p, volume_id: 0x%llx, random_tag: 0x%llx, hostname: %s, pid: %d)\n", c, volume_id, random_tag, hostname, pid);
  int r = get_host_on_connect (c, volume_id, random_tag, hostname, pid, R);
  vkprintf (4, "get_host_on_connect returns %d.\n", r);
  if (r < 0) {
    return r;
  }
  (*R)->last_action_time = now;
  if (r != 0) {
    assert ((*R) != ((void*)0));
    int l = strlen (hostname);
    struct lev_copyexec_result_connect *E = alloc_log_event (LEV_COPYEXEC_RESULT_CONNECT, sizeof (*E) + l, 0);
    E->random_tag = random_tag;
    E->volume_id = volume_id;
    E->ip = (*R)->ip;
    E->hostname_length = l;
    memcpy (E->hostname, hostname, l);
    E->pid = pid;
  }
  return r;
}
