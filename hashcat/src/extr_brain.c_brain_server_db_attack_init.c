
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int write_attacks; int mux_ag; int mux_ar; scalar_t__ long_alloc; int * long_buf; scalar_t__ long_cnt; scalar_t__ short_alloc; int * short_buf; scalar_t__ short_cnt; scalar_t__ ab; int brain_attack; } ;
typedef TYPE_1__ brain_server_db_attack_t ;


 int hc_thread_mutex_init (int ) ;

void brain_server_db_attack_init (brain_server_db_attack_t *brain_server_db_attack, const u32 brain_attack)
{
  brain_server_db_attack->brain_attack = brain_attack;

  brain_server_db_attack->ab = 0;
  brain_server_db_attack->short_cnt = 0;
  brain_server_db_attack->short_buf = ((void*)0);
  brain_server_db_attack->short_alloc = 0;
  brain_server_db_attack->long_cnt = 0;
  brain_server_db_attack->long_buf = ((void*)0);
  brain_server_db_attack->long_alloc = 0;
  brain_server_db_attack->write_attacks = 0;

  hc_thread_mutex_init (brain_server_db_attack->mux_ar);
  hc_thread_mutex_init (brain_server_db_attack->mux_ag);
}
