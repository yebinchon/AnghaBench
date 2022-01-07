
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int write_hashes; int mux_hg; int mux_hr; scalar_t__ long_alloc; int * long_buf; scalar_t__ long_cnt; scalar_t__ hb; int brain_session; } ;
typedef TYPE_1__ brain_server_db_hash_t ;


 int hc_thread_mutex_init (int ) ;

void brain_server_db_hash_init (brain_server_db_hash_t *brain_server_db_hash, const u32 brain_session)
{
  brain_server_db_hash->brain_session = brain_session;

  brain_server_db_hash->hb = 0;
  brain_server_db_hash->long_cnt = 0;
  brain_server_db_hash->long_buf = ((void*)0);
  brain_server_db_hash->long_alloc = 0;
  brain_server_db_hash->write_hashes = 0;

  hc_thread_mutex_init (brain_server_db_hash->mux_hr);
  hc_thread_mutex_init (brain_server_db_hash->mux_hg);
}
