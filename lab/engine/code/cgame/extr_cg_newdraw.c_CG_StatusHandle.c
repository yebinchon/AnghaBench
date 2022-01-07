
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qhandle_t ;
struct TYPE_3__ {int assaultShader; int escortShader; int retrieveShader; int campShader; int followShader; int patrolShader; int defendShader; } ;
struct TYPE_4__ {TYPE_1__ media; } ;
 TYPE_2__ cgs ;

qhandle_t CG_StatusHandle(int task) {
 qhandle_t h;
 switch (task) {
  case 130 :
   h = cgs.media.assaultShader;
   break;
  case 133 :
   h = cgs.media.defendShader;
   break;
  case 129 :
   h = cgs.media.patrolShader;
   break;
  case 131 :
   h = cgs.media.followShader;
   break;
  case 134 :
   h = cgs.media.campShader;
   break;
  case 128 :
   h = cgs.media.retrieveShader;
   break;
  case 132 :
   h = cgs.media.escortShader;
   break;
  default :
   h = cgs.media.assaultShader;
   break;
 }
 return h;
}
