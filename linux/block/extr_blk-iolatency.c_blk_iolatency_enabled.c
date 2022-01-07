
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_iolatency {int enabled; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline bool blk_iolatency_enabled(struct blk_iolatency *blkiolat)
{
 return atomic_read(&blkiolat->enabled) > 0;
}
