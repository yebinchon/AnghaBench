
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipmi_smi {unsigned int curr_working_cset; int channels_ready; TYPE_2__* wchannels; TYPE_2__* channel_list; int * null_user_handler; int waitq; int si_dev; scalar_t__ curr_channel; } ;
struct ipmi_device_id {int dummy; } ;
struct ipmi_channel_set {int dummy; } ;
struct TYPE_4__ {TYPE_1__* c; } ;
struct TYPE_3__ {int protocol; int medium; } ;


 int EIO ;
 int IPMI_CHANNEL_MEDIUM_IPMB ;
 int IPMI_CHANNEL_PROTOCOL_IPMB ;
 int * channel_handler ;
 int dev_warn (int ,char*,int) ;
 int ipmi_version_major (struct ipmi_device_id*) ;
 int ipmi_version_minor (struct ipmi_device_id*) ;
 int memset (TYPE_2__*,int ,int) ;
 int send_channel_info_cmd (struct ipmi_smi*,int ) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int __scan_channels(struct ipmi_smi *intf, struct ipmi_device_id *id)
{
 int rv;

 if (ipmi_version_major(id) > 1
   || (ipmi_version_major(id) == 1
       && ipmi_version_minor(id) >= 5)) {
  unsigned int set;





  set = !intf->curr_working_cset;
  intf->curr_working_cset = set;
  memset(&intf->wchannels[set], 0,
         sizeof(struct ipmi_channel_set));

  intf->null_user_handler = channel_handler;
  intf->curr_channel = 0;
  rv = send_channel_info_cmd(intf, 0);
  if (rv) {
   dev_warn(intf->si_dev,
     "Error sending channel information for channel 0, %d\n",
     rv);
   return -EIO;
  }


  wait_event(intf->waitq, intf->channels_ready);
  intf->null_user_handler = ((void*)0);
 } else {
  unsigned int set = intf->curr_working_cset;


  intf->wchannels[set].c[0].medium = IPMI_CHANNEL_MEDIUM_IPMB;
  intf->wchannels[set].c[0].protocol = IPMI_CHANNEL_PROTOCOL_IPMB;
  intf->channel_list = intf->wchannels + set;
  intf->channels_ready = 1;
 }

 return 0;
}
