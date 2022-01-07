
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {unsigned long st_mtime; } ;


 int _ (char*) ;
 int error_errno (int ,char const*) ;
 unsigned long get_shared_index_expire_date () ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static int should_delete_shared_index(const char *shared_index_path)
{
 struct stat st;
 unsigned long expiration;


 expiration = get_shared_index_expire_date();
 if (!expiration)
  return 0;
 if (stat(shared_index_path, &st))
  return error_errno(_("could not stat '%s'"), shared_index_path);
 if (st.st_mtime > expiration)
  return 0;

 return 1;
}
