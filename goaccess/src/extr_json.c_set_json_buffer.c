
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int offset; size_t size; char* buf; } ;
typedef TYPE_1__ GJSON ;


 int FATAL (char*) ;
 size_t INIT_BUF_SIZE ;
 int free_json (TYPE_1__*) ;
 char* realloc (char*,size_t) ;

__attribute__((used)) static void
set_json_buffer (GJSON * json, int len)
{
  char *tmp = ((void*)0);

  size_t need = json->offset + len + 1, newlen = 0;

  if (need <= json->size)
    return;

  if (json->size == 0) {
    newlen = INIT_BUF_SIZE;
  } else {
    newlen = json->size;
    newlen += newlen / 2;
  }

  if (newlen < need)
    newlen = need;

  tmp = realloc (json->buf, newlen);
  if (tmp == ((void*)0)) {
    free_json (json);
    FATAL (("Unable to realloc JSON buffer.\n"));
  }
  json->buf = tmp;
  json->size = newlen;
}
