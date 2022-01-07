
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block ;


 int block_bind_each (int ,int ,int) ;
 int block_join (int ,int ) ;

__attribute__((used)) static block block_bind(block binder, block body, int bindflags) {
  block_bind_each(binder, body, bindflags);
  return block_join(binder, body);
}
