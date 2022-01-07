
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nexttexinfo; int texture; int value; int flags; int vecs; } ;
struct TYPE_3__ {int texture; int value; int flags; int vecs; } ;


 TYPE_2__* map_texinfo ;
 int memcpy (int ,int ,int) ;
 int numtexinfo ;
 int strcpy (int ,int ) ;
 TYPE_1__* texinfo ;

void Q2_CreateMapTexinfo(void)
{
 int i;

 for (i = 0; i < numtexinfo; i++)
 {
  memcpy(map_texinfo[i].vecs, texinfo[i].vecs, sizeof(float) * 2 * 4);
  map_texinfo[i].flags = texinfo[i].flags;
  map_texinfo[i].value = texinfo[i].value;
  strcpy(map_texinfo[i].texture, texinfo[i].texture);
  map_texinfo[i].nexttexinfo = 0;
 }
}
