
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int bp_len; int bp_type; int disabled; } ;


 int arch_bp_generic_fields (int,int,int*,int*) ;

__attribute__((used)) static int ptrace_fill_bp_fields(struct perf_event_attr *attr,
     int len, int type, bool disabled)
{
 int err, bp_len, bp_type;

 err = arch_bp_generic_fields(len, type, &bp_len, &bp_type);
 if (!err) {
  attr->bp_len = bp_len;
  attr->bp_type = bp_type;
  attr->disabled = disabled;
 }

 return err;
}
