
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* FALLBACK_RUNTIME_PREFIX ;

__attribute__((used)) static const char *system_prefix(void)
{
 return FALLBACK_RUNTIME_PREFIX;
}
