
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct seq_file {int dummy; } ;
struct blkg_rwstat_sample {int dummy; } ;
struct blkg_policy_data {scalar_t__ blkg; } ;


 int __blkg_prfill_rwstat (struct seq_file*,struct blkg_policy_data*,struct blkg_rwstat_sample*) ;
 int blkg_rwstat_read (void*,struct blkg_rwstat_sample*) ;

__attribute__((used)) static u64 blkg_prfill_rwstat_field(struct seq_file *sf,
        struct blkg_policy_data *pd, int off)
{
 struct blkg_rwstat_sample rwstat = { };

 blkg_rwstat_read((void *)pd->blkg + off, &rwstat);
 return __blkg_prfill_rwstat(sf, pd, &rwstat);
}
