
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dbpath_agent_keys ;
 int dbpath_agent_vals ;
 int dbpath_general_stats ;
 int dbpath_hostnames ;
 int dbpath_unique_keys ;
 int ht_agent_keys ;
 int ht_agent_vals ;
 int ht_general_stats ;
 int ht_hostnames ;
 int ht_unique_keys ;
 int tc_db_close (int ,int ) ;

__attribute__((used)) static void
free_prog_tables (void)
{
  tc_db_close (ht_agent_keys, dbpath_agent_keys);
  tc_db_close (ht_agent_vals, dbpath_agent_vals);
  tc_db_close (ht_general_stats, dbpath_general_stats);
  tc_db_close (ht_hostnames, dbpath_hostnames);
  tc_db_close (ht_unique_keys, dbpath_unique_keys);
}
