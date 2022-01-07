
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int file; } ;
typedef TYPE_1__ snd_stream_t ;


 int FS_FCloseFile (int ) ;
 int Z_Free (TYPE_1__*) ;

void S_CodecUtilClose(snd_stream_t **stream)
{
 FS_FCloseFile((*stream)->file);
 Z_Free(*stream);
 *stream = ((void*)0);
}
