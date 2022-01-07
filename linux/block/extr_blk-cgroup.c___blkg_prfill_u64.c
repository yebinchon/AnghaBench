
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct seq_file {int dummy; } ;
struct blkg_policy_data {int blkg; } ;


 char* blkg_dev_name (int ) ;
 int seq_printf (struct seq_file*,char*,char const*,unsigned long long) ;

u64 __blkg_prfill_u64(struct seq_file *sf, struct blkg_policy_data *pd, u64 v)
{
 const char *dname = blkg_dev_name(pd->blkg);

 if (!dname)
  return 0;

 seq_printf(sf, "%s %llu\n", dname, (unsigned long long)v);
 return v;
}
