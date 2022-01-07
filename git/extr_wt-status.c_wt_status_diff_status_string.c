
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* _ (char*) ;

__attribute__((used)) static const char *wt_status_diff_status_string(int status)
{
 switch (status) {
 case 135:
  return _("new file:");
 case 134:
  return _("copied:");
 case 133:
  return _("deleted:");
 case 132:
  return _("modified:");
 case 131:
  return _("renamed:");
 case 130:
  return _("typechange:");
 case 129:
  return _("unknown:");
 case 128:
  return _("unmerged:");
 default:
  return ((void*)0);
 }
}
