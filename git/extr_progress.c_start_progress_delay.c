
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct progress {char const* title; int last_value; int last_percent; unsigned int delay; unsigned int sparse; scalar_t__ split; int title_len; int counters_sb; int start_ns; int * throughput; int total; } ;


 int getnanotime () ;
 int set_progress_signal () ;
 int strbuf_init (int *,int ) ;
 int utf8_strwidth (char const*) ;
 struct progress* xmalloc (int) ;

__attribute__((used)) static struct progress *start_progress_delay(const char *title, uint64_t total,
          unsigned delay, unsigned sparse)
{
 struct progress *progress = xmalloc(sizeof(*progress));
 progress->title = title;
 progress->total = total;
 progress->last_value = -1;
 progress->last_percent = -1;
 progress->delay = delay;
 progress->sparse = sparse;
 progress->throughput = ((void*)0);
 progress->start_ns = getnanotime();
 strbuf_init(&progress->counters_sb, 0);
 progress->title_len = utf8_strwidth(title);
 progress->split = 0;
 set_progress_signal();
 return progress;
}
