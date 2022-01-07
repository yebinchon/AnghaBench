
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;


 scalar_t__ GetEnvironmentVariable (char*,char*,scalar_t__) ;
 scalar_t__ GetTempPath (scalar_t__,char*) ;
 size_t PATH_MAX ;
 char* getenv (char const*) ;
 scalar_t__ is_valid_tmp_path (char const*) ;
 int * realpath (char const*,char*) ;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static int
find_tmp_path(char *buffer, size_t length)
{

 static const size_t var_count = 5;
 static const char *env_vars[] = {
  "CLAR_TMP", "TMPDIR", "TMP", "TEMP", "USERPROFILE"
  };

  size_t i;

 for (i = 0; i < var_count; ++i) {
  const char *env = getenv(env_vars[i]);
  if (!env)
   continue;

  if (is_valid_tmp_path(env)) {




   strncpy(buffer, env, length);
   return 0;
  }
 }


 if (is_valid_tmp_path("/tmp")) {




  strncpy(buffer, "/tmp", length);
  return 0;
 }
 if (is_valid_tmp_path(".")) {
  strncpy(buffer, ".", length);
  return 0;
 }

 return -1;
}
