
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gentity_t ;


 int DeathmatchScoreboardMessage (int *) ;

void Cmd_Score_f( gentity_t *ent ) {
 DeathmatchScoreboardMessage( ent );
}
