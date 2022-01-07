
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {int filesize; } ;
typedef TYPE_1__ iqmHeader_t ;



__attribute__((used)) static qboolean IQM_CheckRange( iqmHeader_t *header, int offset,
    int count, int size ) {


 return ( count <= 0 ||
   offset <= 0 ||
   offset > header->filesize ||
   offset + count * size < 0 ||
   offset + count * size > header->filesize );
}
