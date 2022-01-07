
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ magic; } ;


 int ADD_CNT (int ) ;
 int END_TIMER (int ) ;
 scalar_t__ RPC_BUFFER_MAGIC ;
 int START_TIMER (int ) ;
 int assert (int) ;
 scalar_t__ buffer_read_string (TYPE_1__*,int*,char**) ;
 int fetch ;
 TYPE_1__* inbuf ;
 char* strdup (char*) ;

int do_rpc_fetch_string (char **value) {
  ADD_CNT (fetch);
  START_TIMER (fetch);
  if (!inbuf) {
    *value = strdup ("Trying fetch from empty buffer\n");
    END_TIMER (fetch);
    return -1;
  }
  assert (inbuf->magic == RPC_BUFFER_MAGIC);
  int value_len;
  if (buffer_read_string (inbuf, &value_len, value) < 0) {
    *value = strdup ("Can not fetch string from inbuf\n");
    END_TIMER (fetch);
    return -1;
  } else {
    END_TIMER (fetch);
    return value_len;
  }
}
