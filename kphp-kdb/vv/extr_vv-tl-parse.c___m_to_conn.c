
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int assert (int) ;
 int write_out (int *,void const*,int) ;

__attribute__((used)) static void __m_to_conn (void *_c, const void *data, int len) {
  struct connection *c = (struct connection *)_c;
  assert (write_out (&c->Out, data, len) == len);
}
