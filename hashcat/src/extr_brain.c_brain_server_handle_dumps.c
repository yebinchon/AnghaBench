
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * brain_server_dbs; } ;
typedef TYPE_1__ brain_server_dumper_options_t ;
typedef int brain_server_dbs_t ;


 int BRAIN_SERVER_DUMP_EVERY ;
 int brain_server_write_attack_dumps (int *,char*) ;
 int brain_server_write_hash_dumps (int *,char*) ;
 int keep_running ;
 int sleep (int) ;

void *brain_server_handle_dumps (void *p)
{
  brain_server_dumper_options_t *brain_server_dumper_options = (brain_server_dumper_options_t *) p;

  brain_server_dbs_t *brain_server_dbs = brain_server_dumper_options->brain_server_dbs;

  int i = 0;

  while (keep_running == 1)
  {
    if (i == BRAIN_SERVER_DUMP_EVERY)
    {
      brain_server_write_hash_dumps (brain_server_dbs, ".");
      brain_server_write_attack_dumps (brain_server_dbs, ".");

      i = 0;
    }
    else
    {
      i++;
    }

    sleep (1);
  }

  return ((void*)0);
}
