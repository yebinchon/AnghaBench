
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uv_handle_t ;
struct TYPE_6__ {size_t len; char* base; } ;
typedef TYPE_1__ uv_buf_t ;
struct TYPE_7__ {TYPE_1__ uv_buf_t; struct TYPE_7__* next; } ;
typedef TYPE_2__ buf_t ;


 TYPE_2__* buf_freelist ;
 TYPE_2__* malloc (size_t) ;

__attribute__((used)) static void buf_alloc(uv_handle_t* tcp, size_t size, uv_buf_t* buf) {
  buf_t* ab;

  ab = buf_freelist;
  if (ab != ((void*)0))
    buf_freelist = ab->next;
  else {
    ab = malloc(size + sizeof(*ab));
    ab->uv_buf_t.len = size;
    ab->uv_buf_t.base = (char*) (ab + 1);
  }

  *buf = ab->uv_buf_t;
}
