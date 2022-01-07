
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (char const**) ;
 int BUG (char*,int) ;

__attribute__((used)) static const char *describe_cleanup_mode(int cleanup_mode)
{
 static const char *modes[] = { "whitespace",
           "verbatim",
           "scissors",
           "strip" };

 if (cleanup_mode < ARRAY_SIZE(modes))
  return modes[cleanup_mode];

 BUG("invalid cleanup_mode provided (%d)", cleanup_mode);
}
