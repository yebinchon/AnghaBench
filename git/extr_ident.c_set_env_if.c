
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ getenv (char const*) ;
 int setenv (char const*,char const*,int ) ;

__attribute__((used)) static void set_env_if(const char *key, const char *value, int *given, int bit)
{
 if ((*given & bit) || getenv(key))
  return;
 setenv(key, value, 0);
 *given |= bit;
}
