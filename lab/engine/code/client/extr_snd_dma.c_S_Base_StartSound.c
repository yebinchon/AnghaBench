
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int sfxHandle_t ;


 int S_Base_StartSoundEx (int ,int,int,int ,int ) ;
 int qfalse ;

void S_Base_StartSound( vec3_t origin, int entityNum, int entchannel, sfxHandle_t sfxHandle ) {
 S_Base_StartSoundEx( origin, entityNum, entchannel, sfxHandle, qfalse );
}
