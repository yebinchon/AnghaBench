
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dbpath_agent_keys ;
 int dbpath_agent_vals ;
 int dbpath_general_stats ;
 int dbpath_hostnames ;
 int dbpath_unique_keys ;
 void* ht_agent_keys ;
 void* ht_agent_vals ;
 void* ht_general_stats ;
 void* ht_hostnames ;
 void* ht_unique_keys ;
 void* tc_adb_create (int ) ;

__attribute__((used)) static void
create_prog_tables (void)
{
  ht_agent_keys = tc_adb_create (dbpath_agent_keys);
  ht_agent_vals = tc_adb_create (dbpath_agent_vals);
  ht_general_stats = tc_adb_create (dbpath_general_stats);
  ht_hostnames = tc_adb_create (dbpath_hostnames);
  ht_unique_keys = tc_adb_create (dbpath_unique_keys);
}
