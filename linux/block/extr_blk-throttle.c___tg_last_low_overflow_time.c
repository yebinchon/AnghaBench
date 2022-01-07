
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {unsigned long* last_low_overflow_time; scalar_t__** iops; scalar_t__** bps; } ;


 size_t LIMIT_LOW ;
 size_t READ ;
 size_t WRITE ;
 unsigned long jiffies ;
 unsigned long min (unsigned long,unsigned long) ;

__attribute__((used)) static unsigned long __tg_last_low_overflow_time(struct throtl_grp *tg)
{
 unsigned long rtime = jiffies, wtime = jiffies;

 if (tg->bps[READ][LIMIT_LOW] || tg->iops[READ][LIMIT_LOW])
  rtime = tg->last_low_overflow_time[READ];
 if (tg->bps[WRITE][LIMIT_LOW] || tg->iops[WRITE][LIMIT_LOW])
  wtime = tg->last_low_overflow_time[WRITE];
 return min(rtime, wtime);
}
