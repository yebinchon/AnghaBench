
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* buildBuffer; int handle; } ;
typedef TYPE_1__ pack_t ;


 int Z_Free (TYPE_1__*) ;
 int unzClose (int ) ;

__attribute__((used)) static void FS_FreePak(pack_t *thepak)
{
 unzClose(thepak->handle);
 Z_Free(thepak->buildBuffer);
 Z_Free(thepak);
}
