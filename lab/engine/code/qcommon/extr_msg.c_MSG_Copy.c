
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int cursize; struct TYPE_8__* data; } ;
typedef TYPE_1__ msg_t ;
typedef TYPE_1__ byte ;


 int Com_Error (int ,char*) ;
 int Com_Memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int ERR_DROP ;

void MSG_Copy(msg_t *buf, byte *data, int length, msg_t *src)
{
 if (length<src->cursize) {
  Com_Error( ERR_DROP, "MSG_Copy: can't copy into a smaller msg_t buffer");
 }
 Com_Memcpy(buf, src, sizeof(msg_t));
 buf->data = data;
 Com_Memcpy(buf->data, src->data, src->cursize);
}
