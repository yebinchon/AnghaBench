
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* data; char* data_key; char* root; char* root_key; } ;
struct TYPE_5__ {int status; } ;
typedef TYPE_1__ GLogItem ;
typedef TYPE_2__ GKeyData ;


 char* verify_status_code (int ) ;
 char* verify_status_code_type (int ) ;

__attribute__((used)) static int
gen_status_code_key (GKeyData * kdata, GLogItem * logitem)
{
  const char *status = ((void*)0), *type = ((void*)0);

  if (!logitem->status)
    return 1;

  type = verify_status_code_type (logitem->status);
  status = verify_status_code (logitem->status);

  kdata->data = (char *) status;
  kdata->data_key = (char *) status;

  kdata->root = (char *) type;
  kdata->root_key = (char *) type;

  return 0;
}
