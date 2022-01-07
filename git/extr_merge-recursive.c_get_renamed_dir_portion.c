
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;
 char* strrchr (char const*,char) ;
 char* xstrdup (char*) ;
 char* xstrndup (char const*,int) ;

__attribute__((used)) static void get_renamed_dir_portion(const char *old_path, const char *new_path,
        char **old_dir, char **new_dir)
{
 char *end_of_old, *end_of_new;


 *old_dir = ((void*)0);
 *new_dir = ((void*)0);
 end_of_old = strrchr(old_path, '/');
 end_of_new = strrchr(new_path, '/');
 if (end_of_old == ((void*)0))
  return;





 if (end_of_new == ((void*)0)) {
  *old_dir = xstrndup(old_path, end_of_old - old_path);
  *new_dir = xstrdup("");
  return;
 }


 while (*--end_of_new == *--end_of_old &&
        end_of_old != old_path &&
        end_of_new != new_path)
  ;





 if (end_of_old == old_path && end_of_new == new_path &&
     *end_of_old == *end_of_new)
  return;
 if (end_of_new == new_path &&
     end_of_old != old_path && end_of_old[-1] == '/') {
  *old_dir = xstrndup(old_path, --end_of_old - old_path);
  *new_dir = xstrdup("");
  return;
 }
 end_of_old = strchr(++end_of_old, '/');
 end_of_new = strchr(++end_of_new, '/');


 *old_dir = xstrndup(old_path, end_of_old - old_path);
 *new_dir = xstrndup(new_path, end_of_new - new_path);
}
