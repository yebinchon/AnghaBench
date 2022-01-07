
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int inst ;
struct TYPE_3__ {int * member_1; int * member_0; } ;
typedef TYPE_1__ block ;



__attribute__((used)) static block inst_block(inst* i) {
  block b = {i,i};
  return b;
}
