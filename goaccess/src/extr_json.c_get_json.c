
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; int buf; } ;
typedef int GLog ;
typedef TYPE_1__ GJSON ;
typedef int GHolder ;


 int escape_html_output ;
 int free_json (TYPE_1__*) ;
 TYPE_1__* init_json_output (int *,int *) ;
 char* xstrdup (int ) ;

char *
get_json (GLog * glog, GHolder * holder, int escape_html)
{
  GJSON *json = ((void*)0);
  char *buf = ((void*)0);

  if (holder == ((void*)0))
    return ((void*)0);

  escape_html_output = escape_html;
  if ((json = init_json_output (glog, holder)) && json->size > 0) {
    buf = xstrdup (json->buf);
    free_json (json);
  }

  return buf;
}
