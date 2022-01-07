
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* buf; } ;
typedef TYPE_1__ GJSON ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
free_json (GJSON * json)
{
  if (!json)
    return;

  free (json->buf);
  free (json);
}
