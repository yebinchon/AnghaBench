
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct throughput {int prev_total; int curr_total; int prev_ns; unsigned int avg_bytes; unsigned int avg_misecs; unsigned int* last_bytes; size_t idx; unsigned int* last_misecs; int display; } ;
struct progress {int last_value; struct throughput* throughput; } ;


 int TP_IDX_MAX ;
 int display (struct progress*,int,int *) ;
 int progress_getnanotime (struct progress*) ;
 scalar_t__ progress_update ;
 int strbuf_init (int *,int ) ;
 int throughput_string (int *,int,unsigned int) ;
 struct throughput* xcalloc (int,int) ;

void display_throughput(struct progress *progress, uint64_t total)
{
 struct throughput *tp;
 uint64_t now_ns;
 unsigned int misecs, count, rate;

 if (!progress)
  return;
 tp = progress->throughput;

 now_ns = progress_getnanotime(progress);

 if (!tp) {
  progress->throughput = tp = xcalloc(1, sizeof(*tp));
  tp->prev_total = tp->curr_total = total;
  tp->prev_ns = now_ns;
  strbuf_init(&tp->display, 0);
  return;
 }
 tp->curr_total = total;


 if (now_ns - tp->prev_ns <= 500000000)
  return;
 misecs = ((now_ns - tp->prev_ns) * 4398) >> 32;

 count = total - tp->prev_total;
 tp->prev_total = total;
 tp->prev_ns = now_ns;
 tp->avg_bytes += count;
 tp->avg_misecs += misecs;
 rate = tp->avg_bytes / tp->avg_misecs;
 tp->avg_bytes -= tp->last_bytes[tp->idx];
 tp->avg_misecs -= tp->last_misecs[tp->idx];
 tp->last_bytes[tp->idx] = count;
 tp->last_misecs[tp->idx] = misecs;
 tp->idx = (tp->idx + 1) % TP_IDX_MAX;

 throughput_string(&tp->display, total, rate);
 if (progress->last_value != -1 && progress_update)
  display(progress, progress->last_value, ((void*)0));
}
