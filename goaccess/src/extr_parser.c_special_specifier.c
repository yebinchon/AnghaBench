
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int host; } ;
typedef TYPE_1__ GLogItem ;


 int SPEC_TOKN_NUL ;
 int SPEC_TOKN_SET ;
 int find_xff_host (TYPE_1__*,char**,char**) ;
 int spec_err (TYPE_1__*,int ,char,int *) ;

__attribute__((used)) static int
special_specifier (GLogItem * logitem, char **str, char **p)
{
  switch (**p) {

  case 'h':
    if (logitem->host)
      return spec_err (logitem, SPEC_TOKN_SET, **p, ((void*)0));
    if (find_xff_host (logitem, str, p))
      return spec_err (logitem, SPEC_TOKN_NUL, 'h', ((void*)0));
    break;
  }

  return 0;
}
