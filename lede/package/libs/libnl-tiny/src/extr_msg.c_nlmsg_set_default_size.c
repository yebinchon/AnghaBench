
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t default_msg_size ;
 size_t nlmsg_total_size (int ) ;

void nlmsg_set_default_size(size_t max)
{
 if (max < nlmsg_total_size(0))
  max = nlmsg_total_size(0);

 default_msg_size = max;
}
