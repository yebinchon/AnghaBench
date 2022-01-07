
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ base; } ;
typedef TYPE_1__ uv_buf_t ;
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_2__ buf_t ;


 TYPE_2__* buf_freelist ;

__attribute__((used)) static void buf_free(const uv_buf_t* buf) {
  buf_t* ab = (buf_t*) buf->base - 1;
  ab->next = buf_freelist;
  buf_freelist = ab;
}
