
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONTENTS_LAVA ;
 int CONTENTS_SLIME ;
 int CONTENTS_SOLID ;
 int CONTENTS_WATER ;
 int Q_strncasecmp (char*,char*,int) ;

int HL_TextureContents(char *name)
{
 if (!Q_strncasecmp (name, "sky",3))
  return CONTENTS_SOLID;

 if (!Q_strncasecmp(name+1,"!lava",5))
  return CONTENTS_LAVA;

 if (!Q_strncasecmp(name+1,"!slime",6))
  return CONTENTS_SLIME;
 if (name[0] == '!')
  return CONTENTS_WATER;
 return CONTENTS_SOLID;
}
