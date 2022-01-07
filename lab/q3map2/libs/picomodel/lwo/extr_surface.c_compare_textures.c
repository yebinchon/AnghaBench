
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ord; } ;
typedef TYPE_1__ lwTexture ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int compare_textures( lwTexture *a, lwTexture *b ){
 return strcmp( a->ord, b->ord );
}
