
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_get_bool (char*,int*) ;
 int git_config_get_index_threads (int*) ;

__attribute__((used)) static int record_eoie(void)
{
 int val;

 if (!git_config_get_bool("index.recordendofindexentries", &val))
  return val;






 return !git_config_get_index_threads(&val) && val != 1;
}
