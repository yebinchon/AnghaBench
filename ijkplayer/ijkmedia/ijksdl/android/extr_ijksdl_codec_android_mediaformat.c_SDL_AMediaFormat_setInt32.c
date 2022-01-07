
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_5__ {int (* func_setInt32 ) (TYPE_1__*,char const*,int ) ;} ;
typedef TYPE_1__ SDL_AMediaFormat ;


 int assert (int (*) (TYPE_1__*,char const*,int )) ;
 int stub1 (TYPE_1__*,char const*,int ) ;

void SDL_AMediaFormat_setInt32(SDL_AMediaFormat* aformat, const char* name, int32_t value)
{
    assert(aformat->func_setInt32);
    aformat->func_setInt32(aformat, name, value);
}
