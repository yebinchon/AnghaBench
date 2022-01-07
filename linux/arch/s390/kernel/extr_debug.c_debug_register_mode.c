
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef scalar_t__ uid_t ;
typedef scalar_t__ gid_t ;
typedef int debug_info_t ;


 int BUG_ON (int) ;
 int debug_flush_view ;
 int * debug_info_create (char const*,int,int,int,int ) ;
 int debug_level_view ;
 int debug_mutex ;
 int debug_pages_view ;
 int debug_register_view (int *,int *) ;
 int initialized ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,char const*) ;
 int pr_warn (char*) ;

debug_info_t *debug_register_mode(const char *name, int pages_per_area,
      int nr_areas, int buf_size, umode_t mode,
      uid_t uid, gid_t gid)
{
 debug_info_t *rc = ((void*)0);



 if ((uid != 0) || (gid != 0))
  pr_warn("Root becomes the owner of all s390dbf files in sysfs\n");
 BUG_ON(!initialized);
 mutex_lock(&debug_mutex);


 rc = debug_info_create(name, pages_per_area, nr_areas, buf_size, mode);
 if (!rc)
  goto out;
 debug_register_view(rc, &debug_level_view);
 debug_register_view(rc, &debug_flush_view);
 debug_register_view(rc, &debug_pages_view);
out:
 if (!rc)
  pr_err("Registering debug feature %s failed\n", name);
 mutex_unlock(&debug_mutex);
 return rc;
}
