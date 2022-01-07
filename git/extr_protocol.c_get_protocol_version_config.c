
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum protocol_version { ____Placeholder_protocol_version } protocol_version ;


 int die (char*,char const*,...) ;
 char* getenv (char const*) ;
 int git_config_get_string_const (char*,char const**) ;
 int parse_protocol_version (char const*) ;
 int protocol_unknown_version ;
 int protocol_v0 ;

enum protocol_version get_protocol_version_config(void)
{
 const char *value;
 enum protocol_version retval = protocol_v0;
 const char *git_test_k = "GIT_TEST_PROTOCOL_VERSION";
 const char *git_test_v = getenv(git_test_k);

 if (!git_config_get_string_const("protocol.version", &value)) {
  enum protocol_version version = parse_protocol_version(value);

  if (version == protocol_unknown_version)
   die("unknown value for config 'protocol.version': %s",
       value);

  retval = version;
 }

 if (git_test_v && *git_test_v) {
  enum protocol_version env = parse_protocol_version(git_test_v);

  if (env == protocol_unknown_version)
   die("unknown value for %s: %s", git_test_k, git_test_v);
  if (retval < env)
   retval = env;
 }

 return retval;
}
