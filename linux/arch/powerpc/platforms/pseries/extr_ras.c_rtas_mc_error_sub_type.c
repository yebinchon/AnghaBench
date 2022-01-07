
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pseries_mc_errorlog {int error_type; int sub_err_type; } ;







__attribute__((used)) static inline u8 rtas_mc_error_sub_type(const struct pseries_mc_errorlog *mlog)
{
 switch (mlog->error_type) {
 case 128:
  return (mlog->sub_err_type & 0x07);
 case 130:
 case 131:
 case 129:
  return (mlog->sub_err_type & 0x03);
 default:
  return 0;
 }
}
