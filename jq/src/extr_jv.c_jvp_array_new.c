
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * member_0; } ;
struct TYPE_6__ {TYPE_1__ member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_2__ jv ;
struct TYPE_7__ {int refcnt; } ;


 int JVP_FLAGS_ARRAY ;
 TYPE_4__* jvp_array_alloc (unsigned int) ;

__attribute__((used)) static jv jvp_array_new(unsigned size) {
  jv r = {JVP_FLAGS_ARRAY, 0, 0, 0, {&jvp_array_alloc(size)->refcnt}};
  return r;
}
