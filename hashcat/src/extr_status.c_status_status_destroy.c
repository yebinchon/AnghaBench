
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int accessible; } ;
typedef TYPE_1__ status_ctx_t ;
struct TYPE_8__ {int device_info_cnt; TYPE_4__* device_info_buf; int * cpt; int * guess_charset; int * guess_mod; int * guess_base; int * speed_sec_all; int * time_started_relative; int * time_started_absolute; int * time_estimated_relative; int * time_estimated_absolute; int * session; int * hash_name; int * hash_target; } ;
typedef TYPE_2__ hashcat_status_t ;
struct TYPE_9__ {TYPE_1__* status_ctx; } ;
typedef TYPE_3__ hashcat_ctx_t ;
struct TYPE_10__ {int * brain_link_send_bytes_sec_dev; int * brain_link_recv_bytes_sec_dev; int * brain_link_send_bytes_dev; int * brain_link_recv_bytes_dev; int * hwmon_dev; int * guess_candidates_dev; int * speed_sec_dev; } ;
typedef TYPE_4__ device_info_t ;


 int hcfree (int *) ;

void status_status_destroy (hashcat_ctx_t *hashcat_ctx, hashcat_status_t *hashcat_status)
{
  const status_ctx_t *status_ctx = hashcat_ctx->status_ctx;

  if (status_ctx == ((void*)0)) return;

  if (status_ctx->accessible == 0) return;

  hcfree (hashcat_status->hash_target);
  hcfree (hashcat_status->hash_name);
  hcfree (hashcat_status->session);
  hcfree (hashcat_status->time_estimated_absolute);
  hcfree (hashcat_status->time_estimated_relative);
  hcfree (hashcat_status->time_started_absolute);
  hcfree (hashcat_status->time_started_relative);
  hcfree (hashcat_status->speed_sec_all);
  hcfree (hashcat_status->guess_base);
  hcfree (hashcat_status->guess_mod);
  hcfree (hashcat_status->guess_charset);
  hcfree (hashcat_status->cpt);

  hashcat_status->hash_target = ((void*)0);
  hashcat_status->hash_name = ((void*)0);
  hashcat_status->session = ((void*)0);
  hashcat_status->time_estimated_absolute = ((void*)0);
  hashcat_status->time_estimated_relative = ((void*)0);
  hashcat_status->time_started_absolute = ((void*)0);
  hashcat_status->time_started_relative = ((void*)0);
  hashcat_status->speed_sec_all = ((void*)0);
  hashcat_status->guess_base = ((void*)0);
  hashcat_status->guess_mod = ((void*)0);
  hashcat_status->guess_charset = ((void*)0);
  hashcat_status->cpt = ((void*)0);

  for (int device_id = 0; device_id < hashcat_status->device_info_cnt; device_id++)
  {
    device_info_t *device_info = hashcat_status->device_info_buf + device_id;

    hcfree (device_info->speed_sec_dev);
    hcfree (device_info->guess_candidates_dev);
    hcfree (device_info->hwmon_dev);







    device_info->speed_sec_dev = ((void*)0);
    device_info->guess_candidates_dev = ((void*)0);
    device_info->hwmon_dev = ((void*)0);






  }
}
