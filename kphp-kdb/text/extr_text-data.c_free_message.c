
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ len; } ;
typedef TYPE_1__ message_t ;


 int assert (TYPE_1__*) ;
 int incore_messages ;
 scalar_t__ text_shift ;
 int zfree (TYPE_1__*,scalar_t__) ;

inline void free_message (message_t *M) {
  assert (M);
  zfree (M, M->len + sizeof (message_t) + text_shift);
  incore_messages--;
}
