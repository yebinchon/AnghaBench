
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smi_info {int msg_flags; } ;


 int OEM_DATA_AVAIL ;
 int RECEIVE_MSG_AVAIL ;

__attribute__((used)) static int oem_data_avail_to_receive_msg_avail(struct smi_info *smi_info)
{
 smi_info->msg_flags = ((smi_info->msg_flags & ~OEM_DATA_AVAIL) |
          RECEIVE_MSG_AVAIL);
 return 1;
}
