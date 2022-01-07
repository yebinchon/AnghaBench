
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ (* ztell64_file ) (int ,int ) ;int opaque; int * zseek64_file; } ;
struct TYPE_5__ {scalar_t__ (* ztell32_file ) (int ,int ) ;TYPE_1__ zfile_func64; } ;
typedef TYPE_2__ zlib_filefunc64_32_def ;
typedef int voidpf ;
typedef scalar_t__ uLong ;
typedef scalar_t__ ZPOS64_T ;


 scalar_t__ MAXU32 ;
 scalar_t__ stub1 (int ,int ) ;
 scalar_t__ stub2 (int ,int ) ;

ZPOS64_T call_ztell64 (const zlib_filefunc64_32_def* pfilefunc,voidpf filestream)
{
    if (pfilefunc->zfile_func64.zseek64_file != ((void*)0))
        return (*(pfilefunc->zfile_func64.ztell64_file)) (pfilefunc->zfile_func64.opaque,filestream);
    else
    {
        uLong tell_uLong = (*(pfilefunc->ztell32_file))(pfilefunc->zfile_func64.opaque,filestream);
        if ((tell_uLong) == MAXU32)
            return (ZPOS64_T)-1;
        else
            return tell_uLong;
    }
}
