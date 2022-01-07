
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct topa {int dummy; } ;
struct pt_buffer {unsigned long nr_pages; int last; int first; } ;
typedef int gfp_t ;
struct TYPE_2__ {int end; int base; } ;


 int ENOMEM ;
 int PT_CAP_topa_multiple_entries ;
 TYPE_1__* TOPA_ENTRY (int ,int) ;
 scalar_t__ intel_pt_validate_hw_cap (int ) ;
 int pt_buffer_fini_topa (struct pt_buffer*) ;
 int pt_topa_dump (struct pt_buffer*) ;
 struct topa* topa_alloc (int,int ) ;
 int topa_insert_pages (struct pt_buffer*,int,int ) ;
 int topa_insert_table (struct pt_buffer*,struct topa*) ;
 int topa_pfn (int ) ;

__attribute__((used)) static int pt_buffer_init_topa(struct pt_buffer *buf, int cpu,
          unsigned long nr_pages, gfp_t gfp)
{
 struct topa *topa;
 int err;

 topa = topa_alloc(cpu, gfp);
 if (!topa)
  return -ENOMEM;

 topa_insert_table(buf, topa);

 while (buf->nr_pages < nr_pages) {
  err = topa_insert_pages(buf, cpu, gfp);
  if (err) {
   pt_buffer_fini_topa(buf);
   return -ENOMEM;
  }
 }


 if (intel_pt_validate_hw_cap(PT_CAP_topa_multiple_entries)) {
  TOPA_ENTRY(buf->last, -1)->base = topa_pfn(buf->first);
  TOPA_ENTRY(buf->last, -1)->end = 1;
 }

 pt_topa_dump(buf);
 return 0;
}
