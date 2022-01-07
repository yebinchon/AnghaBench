
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_KASAN ;
 int IS_ENABLED (int ) ;
 scalar_t__ kaslr_enabled () ;

__attribute__((used)) static inline bool kaslr_memory_enabled(void)
{
 return kaslr_enabled() && !IS_ENABLED(CONFIG_KASAN);
}
