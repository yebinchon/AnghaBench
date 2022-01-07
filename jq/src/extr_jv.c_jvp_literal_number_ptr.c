
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jvp_literal_number ;
struct TYPE_5__ {scalar_t__ ptr; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ jv ;


 int JVP_FLAGS_NUMBER_LITERAL ;
 int JVP_HAS_FLAGS (TYPE_2__,int ) ;
 int assert (int ) ;

__attribute__((used)) static jvp_literal_number* jvp_literal_number_ptr(jv j) {
  assert(JVP_HAS_FLAGS(j, JVP_FLAGS_NUMBER_LITERAL));
  return (jvp_literal_number*)j.u.ptr;
}
