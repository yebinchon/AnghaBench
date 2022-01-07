
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* ws_t ;
typedef int ws_status ;
typedef TYPE_3__* ws_private_t ;
struct TYPE_9__ {char* method; char* resource; char* http_version; TYPE_1__* in; } ;
struct TYPE_8__ {int (* on_error ) (TYPE_2__*,char*) ;TYPE_3__* private_state; } ;
struct TYPE_7__ {char* in_head; char const* in_tail; } ;


 int WS_SUCCESS ;
 char* strndup (char const*,int) ;
 char* strnstr (char const*,char*,size_t) ;
 int stub1 (TYPE_2__*,char*) ;
 int stub2 (TYPE_2__*,char*) ;

ws_status ws_read_http_request(ws_t self) {
  ws_private_t my = self->private_state;
  const char *in_head = my->in->in_head;
  size_t in_length = my->in->in_tail - in_head;

  char *line_end = strnstr(in_head, "\r\n", in_length);
  if (!line_end) {
    return self->on_error(self, "Missing \\r\\n");
  }

  char *trio[3];
  size_t i;
  for (i = 0; i < 3; i++) {
    while (in_head < line_end && *in_head == ' ') {
      in_head++;
    }
    const char *s = in_head;
    while (in_head < line_end && *in_head != ' ') {
      in_head++;
    }
    trio[i] = (s < in_head ? strndup(s, in_head - s) : ((void*)0));
  }
  my->method = trio[0];
  my->resource = trio[1];
  my->http_version = trio[2];



  my->in->in_head = line_end;
  if (!my->http_version) {
    return self->on_error(self, "Invalid HTTP header");
  }
  return WS_SUCCESS;
}
