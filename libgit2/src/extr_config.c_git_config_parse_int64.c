
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int GIT_ERROR_CONFIG ;
 scalar_t__ git__strntol64 (int*,char const*,int ,char const**,int ) ;
 int git_error_set (int ,char*,char const*) ;
 int strlen (char const*) ;

int git_config_parse_int64(int64_t *out, const char *value)
{
 const char *num_end;
 int64_t num;

 if (!value || git__strntol64(&num, value, strlen(value), &num_end, 0) < 0)
  goto fail_parse;

 switch (*num_end) {
 case 'g':
 case 'G':
  num *= 1024;


 case 'm':
 case 'M':
  num *= 1024;


 case 'k':
 case 'K':
  num *= 1024;



  if (num_end[1] != '\0')
   return -1;



 case '\0':
  *out = num;
  return 0;

 default:
  goto fail_parse;
 }

fail_parse:
 git_error_set(GIT_ERROR_CONFIG, "failed to parse '%s' as an integer", value ? value : "(null)");
 return -1;
}
