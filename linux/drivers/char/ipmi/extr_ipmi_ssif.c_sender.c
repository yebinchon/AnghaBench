
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec64 {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct ssif_info {int ssif_debug; TYPE_1__* client; struct ipmi_smi_msg* waiting_msg; } ;
struct ipmi_smi_msg {int * data; } ;
struct TYPE_2__ {int dev; } ;


 int BUG_ON (struct ipmi_smi_msg*) ;
 long NSEC_PER_USEC ;
 int SSIF_DEBUG_TIMING ;
 int dev_dbg (int *,char*,int ,int ,long long,long) ;
 unsigned long* ipmi_ssif_lock_cond (struct ssif_info*,unsigned long*) ;
 int ktime_get_real_ts64 (struct timespec64*) ;
 int start_next_msg (struct ssif_info*,unsigned long*) ;

__attribute__((used)) static void sender(void *send_info,
     struct ipmi_smi_msg *msg)
{
 struct ssif_info *ssif_info = (struct ssif_info *) send_info;
 unsigned long oflags, *flags;

 BUG_ON(ssif_info->waiting_msg);
 ssif_info->waiting_msg = msg;

 flags = ipmi_ssif_lock_cond(ssif_info, &oflags);
 start_next_msg(ssif_info, flags);

 if (ssif_info->ssif_debug & SSIF_DEBUG_TIMING) {
  struct timespec64 t;

  ktime_get_real_ts64(&t);
  dev_dbg(&ssif_info->client->dev,
   "**Enqueue %02x %02x: %lld.%6.6ld\n",
   msg->data[0], msg->data[1],
   (long long)t.tv_sec, (long)t.tv_nsec / NSEC_PER_USEC);
 }
}
