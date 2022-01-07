
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JERRY_LOG_LEVEL_ERROR ;
 int JERRY_STANDALONE_EXIT_CODE_FAIL ;
 int exit (int ) ;
 int jerry_port_log (int ,char*,char const*,char const*,char const*) ;

__attribute__((used)) static void
check_usage (bool condition,
             const char *name,
             const char *msg,
             const char *opt)
{
  if (!condition)
  {
    jerry_port_log (JERRY_LOG_LEVEL_ERROR, "%s: %s%s\n", name, msg, opt != ((void*)0) ? opt : "");
    exit (JERRY_STANDALONE_EXIT_CODE_FAIL);
  }
}
