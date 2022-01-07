
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ws_t ;
typedef int ws_status ;
typedef int ws_close ;
struct TYPE_4__ {int (* send_frame ) (TYPE_1__*,int,int ,int,char*,size_t) ;} ;


 int OPCODE_CLOSE ;
 int WS_ERROR ;
 scalar_t__ calloc (size_t,int) ;
 int free (char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int stub1 (TYPE_1__*,int,int ,int,char*,size_t) ;

ws_status ws_send_close(ws_t self, ws_close close_code, const char *reason) {
  size_t length = 2 + (reason ? strlen(reason) : 0);
  char *data = (char *)calloc(length+1, sizeof(char));
  if (!data) {
    return WS_ERROR;
  }
  data[0] = ((close_code >> 8) & 0xFF);
  data[1] = (close_code & 0xFF);
  if (reason) {
    strcpy(data+2, reason);
  }
  ws_status ret = self->send_frame(self,
      1, OPCODE_CLOSE, 0,
      data, length);
  free(data);
  return ret;
}
