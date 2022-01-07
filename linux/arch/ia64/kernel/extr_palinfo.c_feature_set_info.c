
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct seq_file {int dummy; } ;


 char*** proc_features ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static void feature_set_info(struct seq_file *m, u64 avail, u64 status, u64 control,
        unsigned long set)
{
 const char *const *vf, *const *v;
 int i;

 vf = v = proc_features[set];
 for(i=0; i < 64; i++, avail >>=1, status >>=1, control >>=1) {

  if (!(control))
   break;
  if (!(avail & 0x1))
   continue;
  if (vf)
   v = vf + i;
  if ( v && *v ) {
   seq_printf(m, "%-40s : %s %s\n", *v,
    avail & 0x1 ? (status & 0x1 ?
           "On " : "Off"): "",
    avail & 0x1 ? (control & 0x1 ?
      "Ctrl" : "NoCtrl"): "");
  } else {
   seq_printf(m, "Feature set %2ld bit %2d\t\t\t"
     " : %s %s\n",
    set, i,
    avail & 0x1 ? (status & 0x1 ?
      "On " : "Off"): "",
    avail & 0x1 ? (control & 0x1 ?
      "Ctrl" : "NoCtrl"): "");
  }
 }
}
