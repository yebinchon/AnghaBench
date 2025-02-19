
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conn_target {int dummy; } ;


 struct conn_target* Targets ;
 int cur_lease_target ;
 struct conn_target* cur_lease_target_ct ;
 int cur_lease_target_ip ;
 int cur_lease_target_port ;
 int destroy_target (struct conn_target*) ;
 int get_target_by_pid (int,int,struct conn_target*) ;

int get_lease_target_by_pid (int ip, int port, struct conn_target *ct) {
  if (ip == cur_lease_target_ip && port == cur_lease_target_port && ct == cur_lease_target_ct) {
    return cur_lease_target;
  }
  if (cur_lease_target != -1) {
    struct conn_target *old_target = &Targets[cur_lease_target];
    destroy_target (old_target);
  }
  cur_lease_target_ip = ip;
  cur_lease_target_port = port;
  cur_lease_target_ct = ct;
  cur_lease_target = get_target_by_pid (ip, port, ct);

  return cur_lease_target;
}
