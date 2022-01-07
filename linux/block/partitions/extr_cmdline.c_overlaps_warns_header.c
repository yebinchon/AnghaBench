
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_warn (char*) ;

__attribute__((used)) static inline void overlaps_warns_header(void)
{
 pr_warn("Overlapping partitions are used in command line partitions.");
 pr_warn("Don't use filesystems on overlapping partitions:");
}
