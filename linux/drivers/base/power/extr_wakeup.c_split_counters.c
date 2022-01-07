
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IN_PROGRESS_BITS ;
 unsigned int MAX_IN_PROGRESS ;
 unsigned int atomic_read (int *) ;
 int combined_event_count ;

__attribute__((used)) static void split_counters(unsigned int *cnt, unsigned int *inpr)
{
 unsigned int comb = atomic_read(&combined_event_count);

 *cnt = (comb >> IN_PROGRESS_BITS);
 *inpr = comb & MAX_IN_PROGRESS;
}
