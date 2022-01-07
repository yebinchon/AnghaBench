
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int score; } ;
typedef TYPE_1__ GameContext ;



__attribute__((used)) static int player_score(void* context) {
  GameContext* gc = context;
  return gc->score;
}
