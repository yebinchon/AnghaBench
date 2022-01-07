
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DeepmindContext ;


 int dmlab_context_impl ;

DeepmindContext* dmlab_context(void) {
  return &dmlab_context_impl;
}
