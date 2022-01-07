
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dtype; scalar_t__ v_int; scalar_t__ v_long; } ;
struct TYPE_5__ {TYPE_1__ tok; } ;
typedef TYPE_2__ node ;


 scalar_t__ v_int ;

inline int to_bool (node *e) {
  if (e->tok.dtype == v_int) {
    return e->tok.v_int != 0;
  }
  return e->tok.v_long != 0;
}
