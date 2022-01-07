
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* animname; int contents; int flags; int value; } ;
typedef TYPE_1__ miptex_t ;
struct TYPE_5__ {char* name; char* animname; void* contents; void* flags; void* value; } ;


 int Error (char*) ;
 int FreeMemory (TYPE_1__*) ;
 void* LittleLong (int ) ;
 int MAX_MAP_TEXTURES ;
 int TryLoadFile (char*,void**) ;
 char* gamedir ;
 int nummiptex ;
 int sprintf (char*,char*,char*,char*) ;
 int strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 TYPE_2__* textureref ;

int FindMiptex (char *name)
{
 int i;
 char path[1024];
 miptex_t *mt;

 for (i = 0; i < nummiptex; i++)
 {
  if (!strcmp (name, textureref[i].name))
  {
   return i;
  }
 }
 if (nummiptex == MAX_MAP_TEXTURES)
  Error ("MAX_MAP_TEXTURES");
 strcpy (textureref[i].name, name);


 sprintf (path, "%stextures/%s.wal", gamedir, name);
 if (TryLoadFile (path, (void **)&mt) != -1)
 {
  textureref[i].value = LittleLong (mt->value);
  textureref[i].flags = LittleLong (mt->flags);
  textureref[i].contents = LittleLong (mt->contents);
  strcpy (textureref[i].animname, mt->animname);
  FreeMemory(mt);
 }
 nummiptex++;

 if (textureref[i].animname[0])
  FindMiptex (textureref[i].animname);

 return i;
}
