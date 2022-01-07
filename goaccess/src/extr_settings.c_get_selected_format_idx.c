
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * log_format; } ;
struct TYPE_3__ {int awss3; int squid; int awselb; int cloudstorage; int cloudfront; int w3c; int vcombined; int combined; int vcommon; int common; } ;


 size_t AWSELB ;
 size_t AWSS3 ;
 size_t CLOUDFRONT ;
 size_t CLOUDSTORAGE ;
 size_t COMBINED ;
 size_t COMMON ;
 size_t SQUID ;
 size_t VCOMBINED ;
 size_t VCOMMON ;
 size_t W3C ;
 TYPE_2__ conf ;
 TYPE_1__ logs ;
 scalar_t__ strcmp (int *,int ) ;

size_t
get_selected_format_idx (void)
{
  if (conf.log_format == ((void*)0))
    return -1;
  if (strcmp (conf.log_format, logs.common) == 0)
    return COMMON;
  else if (strcmp (conf.log_format, logs.vcommon) == 0)
    return VCOMMON;
  else if (strcmp (conf.log_format, logs.combined) == 0)
    return COMBINED;
  else if (strcmp (conf.log_format, logs.vcombined) == 0)
    return VCOMBINED;
  else if (strcmp (conf.log_format, logs.w3c) == 0)
    return W3C;
  else if (strcmp (conf.log_format, logs.cloudfront) == 0)
    return CLOUDFRONT;
  else if (strcmp (conf.log_format, logs.cloudstorage) == 0)
    return CLOUDSTORAGE;
  else if (strcmp (conf.log_format, logs.awselb) == 0)
    return AWSELB;
  else if (strcmp (conf.log_format, logs.squid) == 0)
    return SQUID;
  else if (strcmp (conf.log_format, logs.awss3) == 0)
    return AWSS3;
  else
    return -1;
}
