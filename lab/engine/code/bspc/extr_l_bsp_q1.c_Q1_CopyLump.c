
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int byte ;
struct TYPE_4__ {TYPE_1__* lumps; } ;
struct TYPE_3__ {int filelen; int fileofs; } ;


 int Error (char*) ;
 int memcpy (void*,int *,int) ;
 int printf (char*,int,...) ;
 int q1_fileLength ;
 TYPE_2__* q1_header ;

int Q1_CopyLump (int lump, void *dest, int size, int maxsize)
{
 int length, ofs;

 length = q1_header->lumps[lump].filelen;
 ofs = q1_header->lumps[lump].fileofs;

 if (length % size) {
  Error ("LoadBSPFile: odd lump size");
 }

 if ((length/size) > maxsize) {
  printf("WARNING: exceeded max size for lump %d size %d > maxsize %d\n", lump, (length/size), maxsize);
  length = maxsize * size;
 }
 if ( ofs + length > q1_fileLength ) {
  printf("WARNING: exceeded file length for lump %d\n", lump);
  length = q1_fileLength - ofs;
  if ( length <= 0 ) {
   return 0;
  }
 }

 memcpy (dest, (byte *)q1_header + ofs, length);

 return length / size;
}
