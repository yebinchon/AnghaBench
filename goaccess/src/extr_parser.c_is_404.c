
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ code444_as_404; } ;
struct TYPE_4__ {scalar_t__ status; } ;
typedef TYPE_1__ GLogItem ;


 TYPE_3__ conf ;
 int memcmp (scalar_t__,char*,int) ;

__attribute__((used)) static int
is_404 (GLogItem * logitem)
{

  if (logitem->status && !memcmp (logitem->status, "404", 3))
    return 1;

  else if (logitem->status && !memcmp (logitem->status, "444", 3) &&
           conf.code444_as_404)
    return 1;
  return 0;
}
