
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct seq_file {int dummy; } ;
struct iolatency_grp {int min_lat_nsec; } ;
struct blkg_policy_data {int blkg; } ;


 int NSEC_PER_USEC ;
 char* blkg_dev_name (int ) ;
 int div_u64 (int ,int ) ;
 struct iolatency_grp* pd_to_lat (struct blkg_policy_data*) ;
 int seq_printf (struct seq_file*,char*,char const*,int ) ;

__attribute__((used)) static u64 iolatency_prfill_limit(struct seq_file *sf,
      struct blkg_policy_data *pd, int off)
{
 struct iolatency_grp *iolat = pd_to_lat(pd);
 const char *dname = blkg_dev_name(pd->blkg);

 if (!dname || !iolat->min_lat_nsec)
  return 0;
 seq_printf(sf, "%s target=%llu\n",
     dname, div_u64(iolat->min_lat_nsec, NSEC_PER_USEC));
 return 0;
}
