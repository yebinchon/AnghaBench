
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int * vec3_t ;
struct TYPE_3__ {int waterBubbleShader; } ;
struct TYPE_4__ {TYPE_1__ media; } ;


 scalar_t__ CG_ConfigString (int) ;
 int CG_ParticleBubble (int ,int *,int *,int,float,int) ;
 int CG_ParticleSnow (int ,int *,int *,int,float,int) ;
 char* COM_Parse (char**) ;
 int atof (char*) ;
 int atoi (char*) ;
 TYPE_2__ cgs ;

int CG_NewParticleArea (int num)
{

 char *str;
 char *token;
 int type;
 vec3_t origin, origin2;
 int i;
 float range = 0;
 int turb;
 int numparticles;
 int snum;

 str = (char *) CG_ConfigString (num);
 if (!str[0])
  return (0);


 token = COM_Parse (&str);
 type = atoi (token);

 if (type == 1)
  range = 128;
 else if (type == 2)
  range = 64;
 else if (type == 3)
  range = 32;
 else if (type == 0)
  range = 256;
 else if (type == 4)
  range = 8;
 else if (type == 5)
  range = 16;
 else if (type == 6)
  range = 32;
 else if (type == 7)
  range = 64;


 for (i=0; i<3; i++)
 {
  token = COM_Parse (&str);
  origin[i] = atof (token);
 }

 for (i=0; i<3; i++)
 {
  token = COM_Parse (&str);
  origin2[i] = atof (token);
 }

 token = COM_Parse (&str);
 numparticles = atoi (token);

 token = COM_Parse (&str);
 turb = atoi (token);

 token = COM_Parse (&str);
 snum = atoi (token);

 for (i=0; i<numparticles; i++)
 {
  if (type >= 4)
   CG_ParticleBubble (cgs.media.waterBubbleShader, origin, origin2, turb, range, snum);
  else
   CG_ParticleSnow (cgs.media.waterBubbleShader, origin, origin2, turb, range, snum);
 }

 return (1);
}
