
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policy_dbs_info {int dummy; } ;
struct cs_policy_dbs_info {struct policy_dbs_info policy_dbs; } ;


 int GFP_KERNEL ;
 struct cs_policy_dbs_info* kzalloc (int,int ) ;

__attribute__((used)) static struct policy_dbs_info *cs_alloc(void)
{
 struct cs_policy_dbs_info *dbs_info;

 dbs_info = kzalloc(sizeof(*dbs_info), GFP_KERNEL);
 return dbs_info ? &dbs_info->policy_dbs : ((void*)0);
}
