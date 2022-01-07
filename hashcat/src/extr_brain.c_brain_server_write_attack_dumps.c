
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t i64 ;
typedef int file ;
struct TYPE_5__ {size_t attack_cnt; TYPE_2__* attack_buf; } ;
typedef TYPE_1__ brain_server_dbs_t ;
struct TYPE_6__ {int brain_attack; int mux_ag; } ;
typedef TYPE_2__ brain_server_db_attack_t ;


 int brain_server_write_attack_dump (TYPE_2__*,char*) ;
 int hc_thread_mutex_lock (int ) ;
 int hc_thread_mutex_unlock (int ) ;
 int memset (char*,int ,int) ;
 int snprintf (char*,int,char*,char const*,int) ;

bool brain_server_write_attack_dumps (brain_server_dbs_t *brain_server_dbs, const char *path)
{
  for (i64 idx = 0; idx < brain_server_dbs->attack_cnt; idx++)
  {
    brain_server_db_attack_t *brain_server_db_attack = &brain_server_dbs->attack_buf[idx];

    hc_thread_mutex_lock (brain_server_db_attack->mux_ag);

    char file[100];

    memset (file, 0, sizeof (file));

    snprintf (file, sizeof (file), "%s/brain.%08x.admp", path, brain_server_db_attack->brain_attack);

    brain_server_write_attack_dump (brain_server_db_attack, file);

    hc_thread_mutex_unlock (brain_server_db_attack->mux_ag);
  }

  return 1;
}
