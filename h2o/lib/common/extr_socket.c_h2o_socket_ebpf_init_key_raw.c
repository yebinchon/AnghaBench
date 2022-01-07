
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_ebpf_map_key_t {int dummy; } ;
struct sockaddr {int dummy; } ;


 int h2o_fatal (char*) ;

int h2o_socket_ebpf_init_key_raw(struct st_h2o_ebpf_map_key_t *key, int sock_type, struct sockaddr *local, struct sockaddr *remote)
{
    h2o_fatal("unimplemented");
}
