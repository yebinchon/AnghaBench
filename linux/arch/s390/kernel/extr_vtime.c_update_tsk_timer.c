
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;



__attribute__((used)) static inline u64 update_tsk_timer(unsigned long *tsk_vtime, u64 new)
{
 u64 delta;

 delta = new - *tsk_vtime;
 *tsk_vtime = new;
 return delta;
}
