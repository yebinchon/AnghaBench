
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zram {int disksize; } ;



__attribute__((used)) static inline bool init_done(struct zram *zram)
{
 return zram->disksize;
}
