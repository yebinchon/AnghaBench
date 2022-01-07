
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ran; } ;
typedef TYPE_1__ uv_once_t ;


 int uv__once_inner (TYPE_1__*,void (*) ()) ;

void uv_once(uv_once_t* guard, void (*callback)(void)) {

  if (guard->ran) {
    return;
  }

  uv__once_inner(guard, callback);
}
