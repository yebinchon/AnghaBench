
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_mbm_local_enabled () ;
 scalar_t__ is_mbm_total_enabled () ;

__attribute__((used)) static inline bool is_mbm_enabled(void)
{
 return (is_mbm_total_enabled() || is_mbm_local_enabled());
}
