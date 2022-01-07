
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {int dummy; } ;


 int bqc_offset_aml_bug_workaround ;

__attribute__((used)) static int video_set_bqc_offset(const struct dmi_system_id *d)
{
 bqc_offset_aml_bug_workaround = 9;
 return 0;
}
