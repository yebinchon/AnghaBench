
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arc4random_buf (void*,size_t) ;

__attribute__((used)) static void
ev_arc4random_buf(void *buf, size_t n)
{
 arc4random_buf(buf, n);
}
