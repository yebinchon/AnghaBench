
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
struct TYPE_9__ {TYPE_1__* in; } ;
struct TYPE_8__ {int (* on_error ) (TYPE_2__*,char*) ;TYPE_3__* private_state; } ;
struct TYPE_7__ {char* in_head; char const* in_tail; } ;


 int WS_SUCCESS ;
 char* strndup (char const*,int) ;
 char* strnstr (char const*,char*,size_t) ;
 int stub1 (TYPE_2__*,char*) ;
 int stub2 (TYPE_2__*,char*) ;

ws_status ws_read_http_header(ws_t self,
    char **to_key, char **to_val) {
  ws_private_t my = self->private_state;
  const char *in_head = my->in->in_head;
  size_t in_length = my->in->in_tail - in_head;

  *to_key = ((void*)0);
  *to_val = ((void*)0);
  char *line_end = strnstr(in_head, "\r\n", in_length);
  if (!line_end) {
    return self->on_error(self, "Missing \\r\\n");
  }
  if (in_head < line_end) {
    const char *k_start = in_head;
    if (*k_start == ' ') {
      return self->on_error(self, "TODO header continuation");
    }
    const char *k_end = k_start;
    while (++k_end < line_end && *k_end != ':') {
    }
    const char *v_start = k_end;
    while (++v_start < line_end && *v_start == ' ') {
    }
    const char *v_end = line_end;
    while (v_end > v_start && v_end[-1] == ' ') {
      v_end--;
    }
    *to_key = strndup(k_start, k_end - k_start);
    *to_val = strndup(v_start, v_end - v_start);
  }
  my->in->in_head = line_end + 2;
  return WS_SUCCESS;
}
