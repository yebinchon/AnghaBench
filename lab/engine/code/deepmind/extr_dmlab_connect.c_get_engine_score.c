
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double* persistant; } ;
struct TYPE_5__ {TYPE_1__ ps; } ;
struct TYPE_6__ {TYPE_2__ snap; } ;


 size_t PERS_SCORE ;
 TYPE_3__ cl ;

__attribute__((used)) static double get_engine_score(void) {
  return cl.snap.ps.persistant[PERS_SCORE];
}
