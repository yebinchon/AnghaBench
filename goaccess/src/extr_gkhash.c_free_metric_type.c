
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int su64; int igsl; int ss32; int si32; int iu64; int is32; int ii32; } ;
typedef TYPE_1__ GKHashMetric ;
 int des_igsl_free (int ) ;
 int des_ii32 (int ) ;
 int des_is32_free (int ) ;
 int des_iu64 (int ) ;
 int des_si32_free (int ) ;
 int des_ss32_free (int ) ;
 int des_su64_free (int ) ;

__attribute__((used)) static void
free_metric_type (GKHashMetric mtrc)
{

  switch (mtrc.type) {
  case 133:
    des_ii32 (mtrc.ii32);
    break;
  case 132:
    des_is32_free (mtrc.is32);
    break;
  case 131:
    des_iu64 (mtrc.iu64);
    break;
  case 130:
    des_si32_free (mtrc.si32);
    break;
  case 129:
    des_ss32_free (mtrc.ss32);
    break;
  case 134:
    des_igsl_free (mtrc.igsl);
    break;
  case 128:
    des_su64_free (mtrc.su64);
    break;
  }
}
