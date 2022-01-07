
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote {int dummy; } ;


 int add_url_alias (struct remote*,char const*) ;
 struct branch* current_branch ;
 scalar_t__ have_git_dir () ;
 struct remote* make_remote (char const*,int ) ;
 int read_branches_file (struct remote*) ;
 int read_config () ;
 int read_remotes_file (struct remote*) ;
 int valid_remote (struct remote*) ;
 scalar_t__ valid_remote_nick (char const*) ;

__attribute__((used)) static struct remote *remote_get_1(const char *name,
       const char *(*get_default)(struct branch *, int *))
{
 struct remote *ret;
 int name_given = 0;

 read_config();

 if (name)
  name_given = 1;
 else
  name = get_default(current_branch, &name_given);

 ret = make_remote(name, 0);
 if (valid_remote_nick(name) && have_git_dir()) {
  if (!valid_remote(ret))
   read_remotes_file(ret);
  if (!valid_remote(ret))
   read_branches_file(ret);
 }
 if (name_given && !valid_remote(ret))
  add_url_alias(ret, name);
 if (!valid_remote(ret))
  return ((void*)0);
 return ret;
}
