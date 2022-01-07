
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long approxidate (int ) ;
 int git_config_get_expiry (char*,int *) ;
 int shared_index_expire ;

__attribute__((used)) static unsigned long get_shared_index_expire_date(void)
{
 static unsigned long shared_index_expire_date;
 static int shared_index_expire_date_prepared;

 if (!shared_index_expire_date_prepared) {
  git_config_get_expiry("splitindex.sharedindexexpire",
          &shared_index_expire);
  shared_index_expire_date = approxidate(shared_index_expire);
  shared_index_expire_date_prepared = 1;
 }

 return shared_index_expire_date;
}
