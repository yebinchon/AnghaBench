
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t fileHandle_t ;
struct TYPE_4__ {int o; int z; } ;
struct TYPE_5__ {TYPE_1__ file; } ;
struct TYPE_6__ {scalar_t__ zipFile; TYPE_2__ handleFiles; } ;


 TYPE_3__* fsh ;
 int ftell (int ) ;
 scalar_t__ qtrue ;
 int unztell (int ) ;

int FS_FTell( fileHandle_t f ) {
 int pos;
 if (fsh[f].zipFile == qtrue) {
  pos = unztell(fsh[f].handleFiles.file.z);
 } else {
  pos = ftell(fsh[f].handleFiles.file.o);
 }
 return pos;
}
