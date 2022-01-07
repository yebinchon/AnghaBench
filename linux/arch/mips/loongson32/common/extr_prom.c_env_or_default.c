
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* prom_getenv (char*) ;
 unsigned long simple_strtol (char*,int ,int ) ;

__attribute__((used)) static inline unsigned long env_or_default(char *env, unsigned long dfl)
{
 char *str = prom_getenv(env);
 return str ? simple_strtol(str, 0, 0) : dfl;
}
