
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
 scalar_t__ buffer_read_int (TYPE_1__*,int*) ;
 int fetch ;
 TYPE_1__* inbuf ;
 char* strdup (char*) ;

int do_rpc_fetch_int (char **error) {
  ADD_CNT (fetch);
  START_TIMER (fetch);
  if (!inbuf) {
    *error = strdup ("Trying to fetch from empty buffer\n");
    END_TIMER (fetch);
    return 0;
  }
  assert (inbuf->magic == RPC_BUFFER_MAGIC);

  int value;
  if (buffer_read_int (inbuf, &value) < 0) {
    *error = strdup ("Can not fetch int from inbuf");
    END_TIMER (fetch);
    return 0;
  } else {
    *error = 0;
    END_TIMER (fetch);
    return value;
  }
}
