
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_ebpf_map_key_t {int dummy; } ;
struct init_ebpf_key_info_t {int remote; int local; } ;


 int SOCK_DGRAM ;
 int h2o_socket_ebpf_init_key_raw (struct st_h2o_ebpf_map_key_t*,int ,int ,int ) ;

__attribute__((used)) static int init_ebpf_key_info(struct st_h2o_ebpf_map_key_t *key, void *_info)
{
    struct init_ebpf_key_info_t *info = _info;
    return h2o_socket_ebpf_init_key_raw(key, SOCK_DGRAM, info->local, info->remote);
}
