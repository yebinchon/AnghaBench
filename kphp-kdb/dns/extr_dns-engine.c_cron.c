
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int worker_stats_t ;
struct connection {int last_query_time; scalar_t__ status; int ev; int fd; int * type; } ;


 struct connection* Connections ;
 scalar_t__ WStats ;
 int check_children_status () ;
 scalar_t__ conn_expect_query ;
 scalar_t__ conn_write_close ;
 int ct_dns_server ;
 int max_connection ;
 int memcpy (scalar_t__,int *,int) ;
 int now ;
 int put_event_into_heap (int ) ;
 int sem_post (int *) ;
 int sem_wait (int *) ;
 int semaphore ;
 int update_idle_stats () ;
 int vkprintf (int,char*,int ) ;
 scalar_t__ worker_id ;
 int wstat ;

__attribute__((used)) static void cron (void) {
  static int cur_conn_idx = 0;
  int seek_steps = 100, first_conn_idx = cur_conn_idx;
  int t = now - 120;
  while (seek_steps > 0) {
    struct connection *c = Connections + cur_conn_idx;
    if (c->type == &ct_dns_server && c->last_query_time < t && c->status == conn_expect_query) {
      vkprintf (3, "Closing idle TCP connection %d.\n", c->fd);
      c->status = conn_write_close;
      put_event_into_heap (c->ev);
    }
    if (++cur_conn_idx > max_connection) {
      cur_conn_idx = 0;
    }
    if (cur_conn_idx == first_conn_idx) {
      break;
    }
    seek_steps--;
  }

  if (worker_id >= 0) {
    update_idle_stats ();
    if (!sem_wait (&semaphore)) {
      memcpy (WStats + worker_id, &wstat, sizeof (worker_stats_t));
      sem_post (&semaphore);
    }
  }
  check_children_status ();
}
