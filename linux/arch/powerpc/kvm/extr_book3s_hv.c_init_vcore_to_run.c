
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcore {scalar_t__ tb_offset_applied; scalar_t__ conferring_threads; scalar_t__ napping_threads; scalar_t__ in_guest; scalar_t__ entry_exit_map; } ;



__attribute__((used)) static void init_vcore_to_run(struct kvmppc_vcore *vc)
{
 vc->entry_exit_map = 0;
 vc->in_guest = 0;
 vc->napping_threads = 0;
 vc->conferring_threads = 0;
 vc->tb_offset_applied = 0;
}
