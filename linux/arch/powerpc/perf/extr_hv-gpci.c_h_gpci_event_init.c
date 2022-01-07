
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ config2; } ;
struct perf_event {TYPE_2__ attr; TYPE_1__* pmu; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 int EINVAL ;
 int ENOENT ;
 int EOPNOTSUPP ;
 scalar_t__ HGPCI_MAX_DATA_BYTES ;
 int event_get_counter_info_version (struct perf_event*) ;
 int event_get_length (struct perf_event*) ;
 scalar_t__ event_get_offset (struct perf_event*) ;
 int event_get_request (struct perf_event*) ;
 int event_get_secondary_index (struct perf_event*) ;
 int event_get_starting_index (struct perf_event*) ;
 scalar_t__ has_branch_stack (struct perf_event*) ;
 int pr_devel (char*,...) ;
 scalar_t__ single_gpci_request (int ,int ,int ,int ,scalar_t__,int,int *) ;

__attribute__((used)) static int h_gpci_event_init(struct perf_event *event)
{
 u64 count;
 u8 length;


 if (event->attr.type != event->pmu->type)
  return -ENOENT;


 if (event->attr.config2) {
  pr_devel("config2 set when reserved\n");
  return -EINVAL;
 }


 if (has_branch_stack(event))
  return -EOPNOTSUPP;

 length = event_get_length(event);
 if (length < 1 || length > 8) {
  pr_devel("length invalid\n");
  return -EINVAL;
 }


 if ((event_get_offset(event) + length) > HGPCI_MAX_DATA_BYTES) {
  pr_devel("request outside of buffer: %zu > %zu\n",
    (size_t)event_get_offset(event) + length,
    HGPCI_MAX_DATA_BYTES);
  return -EINVAL;
 }


 if (single_gpci_request(event_get_request(event),
    event_get_starting_index(event),
    event_get_secondary_index(event),
    event_get_counter_info_version(event),
    event_get_offset(event),
    length,
    &count)) {
  pr_devel("gpci hcall failed\n");
  return -EINVAL;
 }

 return 0;
}
