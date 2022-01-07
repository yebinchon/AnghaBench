
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Tmp; } ;


 int alloc_head_buffer () ;
 int assert (int ) ;
 int free_tmp_buffers (struct connection*) ;

__attribute__((used)) static inline void init_tmp_buffers (struct connection *c) {
  free_tmp_buffers (c);
  c->Tmp = alloc_head_buffer ();
  assert (c->Tmp);
}
