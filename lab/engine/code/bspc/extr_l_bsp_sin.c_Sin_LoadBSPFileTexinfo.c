
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sin_texinfo_t ;
typedef int sin_dheader_t ;
struct TYPE_8__ {scalar_t__ ident; scalar_t__ version; TYPE_1__* lumps; } ;
struct TYPE_7__ {int filelen; int fileofs; } ;
typedef int FILE ;


 int Error (char*,char*,...) ;
 int FreeMemory (TYPE_2__*) ;
 TYPE_2__* GetMemory (int) ;
 int LittleLong (int) ;
 int SEEK_SET ;
 scalar_t__ SINGAME_BSPHEADER ;
 scalar_t__ SINGAME_BSPVERSION ;
 scalar_t__ SIN_BSPHEADER ;
 scalar_t__ SIN_BSPVERSION ;
 size_t SIN_LUMP_TEXINFO ;
 int Sin_SwapBSPFile (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (TYPE_2__*,int,int,int *) ;
 int fseek (int *,int,int ) ;
 TYPE_2__* header ;
 int sin_numtexinfo ;
 TYPE_2__* sin_texinfo ;

void Sin_LoadBSPFileTexinfo (char *filename)
{
 int i;
 FILE *f;
 int length, ofs;

 header = GetMemory(sizeof(sin_dheader_t));

 f = fopen (filename, "rb");
 fread (header, sizeof(sin_dheader_t), 1, f);


 for (i=0 ; i< sizeof(sin_dheader_t)/4 ; i++)
  ((int *)header)[i] = LittleLong ( ((int *)header)[i]);

 if (header->ident != SIN_BSPHEADER && header->ident != SINGAME_BSPHEADER)
  Error ("%s is not a IBSP file", filename);
 if (header->version != SIN_BSPVERSION && header->version != SINGAME_BSPVERSION)
  Error ("%s is version %i, not %i", filename, header->version, SIN_BSPVERSION);


 length = header->lumps[SIN_LUMP_TEXINFO].filelen;
 ofs = header->lumps[SIN_LUMP_TEXINFO].fileofs;

 fseek (f, ofs, SEEK_SET);
 fread (sin_texinfo, length, 1, f);
 fclose (f);

 sin_numtexinfo = length / sizeof(sin_texinfo_t);

 FreeMemory(header);

 Sin_SwapBSPFile (0);
}
