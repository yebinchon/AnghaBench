
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pt_buffer {scalar_t__ output_off; int snapshot; } ;
struct pt {int handle; } ;


 int MSR_IA32_RTIT_STATUS ;
 int PERF_AUX_FLAG_TRUNCATED ;
 int PT_CAP_topa_multiple_entries ;
 int RTIT_STATUS_ERROR ;
 int RTIT_STATUS_STOPPED ;
 scalar_t__ TOPA_PMI_MARGIN ;
 int intel_pt_validate_hw_cap (int ) ;
 int memset (void*,int ,scalar_t__) ;
 int perf_aux_output_flag (int *,int ) ;
 struct pt_buffer* perf_get_aux (int *) ;
 int pr_err_ratelimited (char*) ;
 int pt_buffer_advance (struct pt_buffer*) ;
 void* pt_buffer_region (struct pt_buffer*) ;
 scalar_t__ pt_buffer_region_size (struct pt_buffer*) ;
 int pt_topa_dump (struct pt_buffer*) ;
 int rdmsrl (int ,int) ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static void pt_handle_status(struct pt *pt)
{
 struct pt_buffer *buf = perf_get_aux(&pt->handle);
 int advance = 0;
 u64 status;

 rdmsrl(MSR_IA32_RTIT_STATUS, status);

 if (status & RTIT_STATUS_ERROR) {
  pr_err_ratelimited("ToPA ERROR encountered, trying to recover\n");
  pt_topa_dump(buf);
  status &= ~RTIT_STATUS_ERROR;
 }

 if (status & RTIT_STATUS_STOPPED) {
  status &= ~RTIT_STATUS_STOPPED;






  if (!intel_pt_validate_hw_cap(PT_CAP_topa_multiple_entries) ||
      buf->output_off == pt_buffer_region_size(buf)) {
   perf_aux_output_flag(&pt->handle,
                        PERF_AUX_FLAG_TRUNCATED);
   advance++;
  }
 }





 if (!intel_pt_validate_hw_cap(PT_CAP_topa_multiple_entries) &&
     !buf->snapshot &&
     pt_buffer_region_size(buf) - buf->output_off <= TOPA_PMI_MARGIN) {
  void *head = pt_buffer_region(buf);


  memset(head + buf->output_off, 0,
         pt_buffer_region_size(buf) -
         buf->output_off);
  advance++;
 }

 if (advance)
  pt_buffer_advance(buf);

 wrmsrl(MSR_IA32_RTIT_STATUS, status);
}
