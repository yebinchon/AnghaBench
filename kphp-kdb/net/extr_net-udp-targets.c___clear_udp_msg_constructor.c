
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udp_msg_constructor {int total_parts; TYPE_1__* msgs; } ;
struct TYPE_2__ {scalar_t__ magic; } ;


 int free (struct udp_msg_constructor*) ;
 int rwm_free (TYPE_1__*) ;

void __clear_udp_msg_constructor (struct udp_msg_constructor *M) {
  int i;
  for (i = 0; i < M->total_parts; i++) {
    if (M->msgs[i].magic) {
      rwm_free (&M->msgs[i]);
    }
  }
  free (M);
}
