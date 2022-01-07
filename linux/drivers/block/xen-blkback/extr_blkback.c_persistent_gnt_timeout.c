
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct persistent_gnt {int last_used; } ;


 int HZ ;
 int jiffies ;
 int xen_blkif_pgrant_timeout ;

__attribute__((used)) static inline bool persistent_gnt_timeout(struct persistent_gnt *persistent_gnt)
{
 return xen_blkif_pgrant_timeout &&
        (jiffies - persistent_gnt->last_used >=
  HZ * xen_blkif_pgrant_timeout);
}
