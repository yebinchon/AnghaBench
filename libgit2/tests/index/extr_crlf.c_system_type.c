
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GIT_EOL_CRLF ;
 scalar_t__ GIT_EOL_NATIVE ;

__attribute__((used)) static const char *system_type(void)
{
 if (GIT_EOL_NATIVE == GIT_EOL_CRLF)
  return "windows";
 else
  return "posix";
}
