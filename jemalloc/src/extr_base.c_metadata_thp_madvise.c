
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ init_system_thp_mode ;
 scalar_t__ metadata_thp_enabled () ;
 scalar_t__ thp_mode_default ;

__attribute__((used)) static inline bool
metadata_thp_madvise(void) {
 return (metadata_thp_enabled() &&
     (init_system_thp_mode == thp_mode_default));
}
