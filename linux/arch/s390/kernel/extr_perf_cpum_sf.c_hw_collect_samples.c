
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int hw; } ;
struct hws_trailer_entry {int f; } ;
struct hws_basic_entry {int def; scalar_t__ I; scalar_t__ W; } ;


 int SAMPL_RATE (int *) ;
 int debug_sample_entry (struct hws_basic_entry*,struct hws_trailer_entry*) ;
 int perf_event_count_update (struct perf_event*,int ) ;
 unsigned long long perf_push_sample (struct perf_event*,struct hws_basic_entry*) ;
 scalar_t__ trailer_entry_ptr (unsigned long) ;

__attribute__((used)) static void hw_collect_samples(struct perf_event *event, unsigned long *sdbt,
          unsigned long long *overflow)
{
 struct hws_trailer_entry *te;
 struct hws_basic_entry *sample;

 te = (struct hws_trailer_entry *) trailer_entry_ptr(*sdbt);
 sample = (struct hws_basic_entry *) *sdbt;
 while ((unsigned long *) sample < (unsigned long *) te) {

  if (!sample->def)
   break;


  perf_event_count_update(event, SAMPL_RATE(&event->hw));


  if (sample->def == 0x0001) {




   if (!*overflow) {

    if (sample->I == 0 && sample->W == 0) {

     *overflow = perf_push_sample(event,
             sample);
    }
   } else

    *overflow += 1;
  } else {
   debug_sample_entry(sample, te);
   if (!te->f)
    break;
  }


  sample->def = 0;
  sample++;
 }
}
