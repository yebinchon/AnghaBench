
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hws_basic_entry {int dummy; } ;
struct hw_perf_event {int dummy; } ;
struct cpu_hw_sf {int sfb; int qsi; } ;


 unsigned long CPUM_SF_MIN_SDB ;
 unsigned long DIV_ROUND_UP (unsigned long,unsigned long) ;
 int PAGE_SIZE ;
 int SAMPL_RATE (struct hw_perf_event*) ;
 int alloc_sampling_buffer (int *,int ) ;
 int debug_sprintf_event (int ,int,char*,int ,unsigned long,unsigned long,int ,size_t,struct cpu_hw_sf*) ;
 unsigned long sample_rate_to_freq (int *,int ) ;
 scalar_t__ sf_buffer_available (struct cpu_hw_sf*) ;
 int sfb_init_allocs (unsigned long,struct hw_perf_event*) ;
 int sfb_max_limit (struct hw_perf_event*) ;
 int sfb_pending_allocs (int *,struct hw_perf_event*) ;
 int sfdbg ;

__attribute__((used)) static int allocate_buffers(struct cpu_hw_sf *cpuhw, struct hw_perf_event *hwc)
{
 unsigned long n_sdb, freq, factor;
 size_t sample_size;
 sample_size = sizeof(struct hws_basic_entry);
 freq = sample_rate_to_freq(&cpuhw->qsi, SAMPL_RATE(hwc));
 factor = 1;
 n_sdb = DIV_ROUND_UP(freq, factor * ((PAGE_SIZE-64) / sample_size));
 if (n_sdb < CPUM_SF_MIN_SDB)
  n_sdb = CPUM_SF_MIN_SDB;
 sfb_init_allocs(n_sdb, hwc);
 if (sf_buffer_available(cpuhw))
  return 0;

 debug_sprintf_event(sfdbg, 3,
       "allocate_buffers: rate=%lu f=%lu sdb=%lu/%lu"
       " sample_size=%lu cpuhw=%p\n",
       SAMPL_RATE(hwc), freq, n_sdb, sfb_max_limit(hwc),
       sample_size, cpuhw);

 return alloc_sampling_buffer(&cpuhw->sfb,
         sfb_pending_allocs(&cpuhw->sfb, hwc));
}
