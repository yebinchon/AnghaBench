
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {double last_query_timeout; } ;


 int assert (int) ;

__attribute__((used)) static inline void accumulate_query_timeout (struct connection *c, double query_timeout) {
  if (c->last_query_timeout < query_timeout) {
    c->last_query_timeout = query_timeout;
    assert (query_timeout < 32);
  }
}
