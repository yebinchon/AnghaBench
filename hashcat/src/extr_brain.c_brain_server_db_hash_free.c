
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int write_hashes; scalar_t__ brain_session; scalar_t__ long_alloc; int * long_buf; scalar_t__ long_cnt; scalar_t__ hb; int mux_hr; int mux_hg; } ;
typedef TYPE_1__ brain_server_db_hash_t ;


 int hc_thread_mutex_delete (int ) ;
 int hcfree (int *) ;

void brain_server_db_hash_free (brain_server_db_hash_t *brain_server_db_hash)
{
  hc_thread_mutex_delete (brain_server_db_hash->mux_hg);
  hc_thread_mutex_delete (brain_server_db_hash->mux_hr);

  hcfree (brain_server_db_hash->long_buf);

  brain_server_db_hash->hb = 0;
  brain_server_db_hash->long_cnt = 0;
  brain_server_db_hash->long_buf = ((void*)0);
  brain_server_db_hash->long_alloc = 0;
  brain_server_db_hash->write_hashes = 0;
  brain_server_db_hash->brain_session = 0;
}
