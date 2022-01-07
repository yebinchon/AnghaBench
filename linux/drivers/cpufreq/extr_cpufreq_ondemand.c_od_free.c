
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policy_dbs_info {int dummy; } ;


 int kfree (int ) ;
 int to_dbs_info (struct policy_dbs_info*) ;

__attribute__((used)) static void od_free(struct policy_dbs_info *policy_dbs)
{
 kfree(to_dbs_info(policy_dbs));
}
