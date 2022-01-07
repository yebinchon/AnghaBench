
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct passwd {char const* pw_dir; } ;


 struct strbuf STRBUF_INIT ;
 int convert_slashes (int ) ;
 char* getenv (char*) ;
 struct passwd* getpw_str (char const*,size_t) ;
 int strbuf_add_real_path (struct strbuf*,char const*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 char* strchrnul (char const*,char) ;

char *expand_user_path(const char *path, int real_home)
{
 struct strbuf user_path = STRBUF_INIT;
 const char *to_copy = path;

 if (path == ((void*)0))
  goto return_null;
 if (path[0] == '~') {
  const char *first_slash = strchrnul(path, '/');
  const char *username = path + 1;
  size_t username_len = first_slash - username;
  if (username_len == 0) {
   const char *home = getenv("HOME");
   if (!home)
    goto return_null;
   if (real_home)
    strbuf_add_real_path(&user_path, home);
   else
    strbuf_addstr(&user_path, home);



  } else {
   struct passwd *pw = getpw_str(username, username_len);
   if (!pw)
    goto return_null;
   strbuf_addstr(&user_path, pw->pw_dir);
  }
  to_copy = first_slash;
 }
 strbuf_addstr(&user_path, to_copy);
 return strbuf_detach(&user_path, ((void*)0));
return_null:
 strbuf_release(&user_path);
 return ((void*)0);
}
