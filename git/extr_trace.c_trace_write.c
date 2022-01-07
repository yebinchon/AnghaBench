
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_key {int key; } ;


 int errno ;
 int get_trace_fd (struct trace_key*) ;
 int strerror (int ) ;
 int trace_disable (struct trace_key*) ;
 int warning (char*,int ,int ) ;
 scalar_t__ write_in_full (int ,void const*,unsigned int) ;

__attribute__((used)) static void trace_write(struct trace_key *key, const void *buf, unsigned len)
{
 if (write_in_full(get_trace_fd(key), buf, len) < 0) {
  warning("unable to write trace for %s: %s",
   key->key, strerror(errno));
  trace_disable(key);
 }
}
