
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int flags; int fd; } ;


 int C_NOQACK ;
 int disable_qack (int ) ;

__attribute__((used)) static inline void cond_disable_qack (struct connection *c) {
  if (c->flags & C_NOQACK) {
    disable_qack (c->fd);
  }
}
