
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_dir; } ;
typedef int jv ;


 char* getenv (char*) ;
 struct passwd* getpwuid (int ) ;
 int getuid () ;
 int jv_invalid_with_msg (int ) ;
 int jv_string (char*) ;
 int jv_string_fmt (char*,char*,char*) ;

jv get_home() {
  jv ret;
  char *home = getenv("HOME");
  if (!home) {

    struct passwd* pwd = getpwuid(getuid());
    if (pwd)
      ret = jv_string(pwd->pw_dir);
    else
      ret = jv_invalid_with_msg(jv_string("Could not find home directory."));
  } else {
    ret = jv_string(home);
  }
  return ret;
}
