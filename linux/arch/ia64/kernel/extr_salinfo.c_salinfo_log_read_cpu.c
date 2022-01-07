
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct salinfo_data {int type; scalar_t__ log_buffer; int log_size; } ;
struct TYPE_2__ {scalar_t__ severity; } ;
typedef TYPE_1__ sal_log_record_header_t ;


 int ia64_sal_clear_state_info (int ) ;
 int ia64_sal_get_state_info (int ,int *) ;
 scalar_t__ sal_log_severity_corrected ;

__attribute__((used)) static long
salinfo_log_read_cpu(void *context)
{
 struct salinfo_data *data = context;
 sal_log_record_header_t *rh;
 data->log_size = ia64_sal_get_state_info(data->type, (u64 *) data->log_buffer);
 rh = (sal_log_record_header_t *)(data->log_buffer);

 if (rh->severity == sal_log_severity_corrected)
  ia64_sal_clear_state_info(data->type);
 return 0;
}
