
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ enabled; scalar_t__ supported; } ;
struct TYPE_5__ {TYPE_1__ pbos; } ;
typedef TYPE_2__ GameContext ;



__attribute__((used)) static bool use_pbo_rendering(GameContext* gc) {
  return gc->pbos.supported && gc->pbos.enabled;
}
