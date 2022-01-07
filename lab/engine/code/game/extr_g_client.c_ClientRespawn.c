
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gentity_t ;


 int ClientSpawn (int *) ;
 int CopyToBodyQue (int *) ;

void ClientRespawn( gentity_t *ent ) {

 CopyToBodyQue (ent);
 ClientSpawn(ent);
}
