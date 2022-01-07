
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* func_setBuffer ) (TYPE_1__*,char const*,void*,size_t) ;int func_setInt32; } ;
typedef TYPE_1__ SDL_AMediaFormat ;


 int assert (int ) ;
 int stub1 (TYPE_1__*,char const*,void*,size_t) ;

void SDL_AMediaFormat_setBuffer(SDL_AMediaFormat* aformat, const char* name, void* data, size_t size)
{
    assert(aformat->func_setInt32);
    aformat->func_setBuffer(aformat, name, data, size);
}
