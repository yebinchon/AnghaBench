
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_dir; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;


 int E_ARGUMENT_ERROR ;
 char* getenv (char*) ;
 struct passwd* getpwnam (char const*) ;
 int mrb_file_is_absolute_path (char*) ;
 scalar_t__ mrb_get_argc (int *) ;
 scalar_t__ mrb_get_args (int *,char*,int *) ;
 int mrb_locale_free (char*) ;
 char* mrb_locale_from_utf8 (char*,int) ;
 int mrb_nil_value () ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_raisef (int *,int ,char*,int ) ;
 int mrb_str_new_cstr (int *,char*) ;
 char* mrb_str_to_cstr (int *,int ) ;

__attribute__((used)) static mrb_value
mrb_file__gethome(mrb_state *mrb, mrb_value klass)
{
  mrb_int argc;
  char *home;
  mrb_value path;


  mrb_value username;

  argc = mrb_get_args(mrb, "|S", &username);
  if (argc == 0) {
    home = getenv("HOME");
    if (home == ((void*)0)) {
      return mrb_nil_value();
    }
    if (!mrb_file_is_absolute_path(home)) {
      mrb_raise(mrb, E_ARGUMENT_ERROR, "non-absolute home");
    }
  } else {
    const char *cuser = mrb_str_to_cstr(mrb, username);
    struct passwd *pwd = getpwnam(cuser);
    if (pwd == ((void*)0)) {
      return mrb_nil_value();
    }
    home = pwd->pw_dir;
    if (!mrb_file_is_absolute_path(home)) {
      mrb_raisef(mrb, E_ARGUMENT_ERROR, "non-absolute home of ~%S", username);
    }
  }
  home = mrb_locale_from_utf8(home, -1);
  path = mrb_str_new_cstr(mrb, home);
  mrb_locale_free(home);
  return path;
}
