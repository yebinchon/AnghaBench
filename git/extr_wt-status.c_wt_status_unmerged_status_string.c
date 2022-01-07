
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG (char*,int) ;
 char const* _ (char*) ;

__attribute__((used)) static const char *wt_status_unmerged_status_string(int stagemask)
{
 switch (stagemask) {
 case 1:
  return _("both deleted:");
 case 2:
  return _("added by us:");
 case 3:
  return _("deleted by them:");
 case 4:
  return _("added by them:");
 case 5:
  return _("deleted by us:");
 case 6:
  return _("both added:");
 case 7:
  return _("both modified:");
 default:
  BUG("unhandled unmerged status %x", stagemask);
 }
}
