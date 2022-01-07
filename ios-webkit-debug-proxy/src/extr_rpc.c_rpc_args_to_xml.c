
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* rpc_t ;
typedef int rpc_status ;
typedef int plist_t ;
struct TYPE_4__ {int (* on_error ) (TYPE_1__*,char*) ;} ;


 int RPC_ERROR ;
 int RPC_SUCCESS ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int plist_to_xml (int ,char**,int*) ;
 char* strchr (char*,char) ;
 int strncmp (char*,char*,int) ;
 int strncpy (char*,char*,int) ;
 char* strstr (char*,char*) ;
 int stub1 (TYPE_1__*,char*) ;

rpc_status rpc_args_to_xml(rpc_t self,
    const void *args_obj, char **to_xml, bool should_trim) {
  if (!args_obj || !to_xml) {
    return RPC_ERROR;
  }
  *to_xml = ((void*)0);
  uint32_t length = 0;
  plist_to_xml((plist_t)args_obj, to_xml, &length);
  if (!*to_xml || !length) {
    return self->on_error(self, "plist_to_xml failed");
  }
  if (should_trim) {
    char *head = strstr(*to_xml, "<plist");
    head = (head ? strchr(head, '>') : ((void*)0));
    if (head) {
      while (*++head == '\n') {
      }
      char *tail = *to_xml + length;
      while (tail > head && (!*tail || *tail == '\n')) {
        tail--;
      }
      if (tail-head >= 8 && !strncmp(tail-7, "</plist>", 8)) {
        tail -= 8;
        char *new_xml = (char *)malloc((tail - head + 1) * sizeof(char));
        strncpy(new_xml, head, tail - head);
        new_xml[tail - head] = '\0';
        free(*to_xml);
        *to_xml = new_xml;
      }
    }
  }
  return RPC_SUCCESS;
}
