
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct seq_file {int dummy; } ;
typedef int s64 ;


 int feature_set_info (struct seq_file*,int,int,int,int) ;
 int ia64_pal_proc_get_features (int*,int*,int*,int) ;

__attribute__((used)) static int processor_info(struct seq_file *m)
{
 u64 avail=1, status=1, control=1, feature_set=0;
 s64 ret;

 do {
  ret = ia64_pal_proc_get_features(&avail, &status, &control,
      feature_set);
  if (ret < 0)
   return 0;

  if (ret == 1) {
   feature_set++;
   continue;
  }

  feature_set_info(m, avail, status, control, feature_set);
  feature_set++;
 } while(1);

 return 0;
}
