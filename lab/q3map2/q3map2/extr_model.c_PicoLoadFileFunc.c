
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int vfsLoadFile (char const*,void**,int ) ;

void PicoLoadFileFunc( char *name, byte **buffer, int *bufSize ){
 *bufSize = vfsLoadFile( (const char*) name, (void**) buffer, 0 );
}
