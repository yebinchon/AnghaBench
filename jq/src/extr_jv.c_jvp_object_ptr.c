
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jvp_object ;
struct TYPE_5__ {scalar_t__ ptr; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ jv ;


 int JVP_HAS_KIND (TYPE_2__,int ) ;
 int JV_KIND_OBJECT ;
 int assert (int ) ;

__attribute__((used)) static jvp_object* jvp_object_ptr(jv o) {
  assert(JVP_HAS_KIND(o, JV_KIND_OBJECT));
  return (jvp_object*)o.u.ptr;
}
