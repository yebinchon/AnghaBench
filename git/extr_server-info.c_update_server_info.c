
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_path (char*) ;
 int unlink_or_warn (int ) ;
 int update_info_packs (int) ;
 int update_info_refs (int) ;

int update_server_info(int force)
{




 int errs = 0;

 errs = errs | update_info_refs(force);
 errs = errs | update_info_packs(force);


 unlink_or_warn(git_path("info/rev-cache"));

 return errs;
}
