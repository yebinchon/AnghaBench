
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int awss3; int squid; int awselb; int cloudstorage; int cloudfront; int w3c; int vcombined; int combined; int vcommon; int common; } ;
 char* alloc_string (int ) ;
 TYPE_1__ logs ;

char *
get_selected_format_str (size_t idx)
{
  char *fmt = ((void*)0);
  switch (idx) {
  case 132:
    fmt = alloc_string (logs.common);
    break;
  case 129:
    fmt = alloc_string (logs.vcommon);
    break;
  case 133:
    fmt = alloc_string (logs.combined);
    break;
  case 130:
    fmt = alloc_string (logs.vcombined);
    break;
  case 128:
    fmt = alloc_string (logs.w3c);
    break;
  case 135:
    fmt = alloc_string (logs.cloudfront);
    break;
  case 134:
    fmt = alloc_string (logs.cloudstorage);
    break;
  case 137:
    fmt = alloc_string (logs.awselb);
    break;
  case 131:
    fmt = alloc_string (logs.squid);
    break;
  case 136:
    fmt = alloc_string (logs.awss3);
    break;
  }

  return fmt;
}
