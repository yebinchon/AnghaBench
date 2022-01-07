
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hws_lsctl_request_block {int dummy; } ;
typedef int sreq ;


 int lsctl (struct hws_lsctl_request_block*) ;
 int memset (struct hws_lsctl_request_block*,int ,int) ;

__attribute__((used)) static int sf_disable(void)
{
 struct hws_lsctl_request_block sreq;

 memset(&sreq, 0, sizeof(sreq));
 return lsctl(&sreq);
}
