
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * opaque; int zerror_file; int zclose_file; int zseek_file; int ztell_file; int zwrite_file; int zread_file; int zopen_file; } ;
typedef TYPE_1__ zlib_filefunc_def ;


 int win32_close_file_func ;
 int win32_error_file_func ;
 int win32_open_file_func ;
 int win32_read_file_func ;
 int win32_seek_file_func ;
 int win32_tell_file_func ;
 int win32_write_file_func ;

void fill_win32_filefunc (zlib_filefunc_def* pzlib_filefunc_def)
{
    pzlib_filefunc_def->zopen_file = win32_open_file_func;
    pzlib_filefunc_def->zread_file = win32_read_file_func;
    pzlib_filefunc_def->zwrite_file = win32_write_file_func;
    pzlib_filefunc_def->ztell_file = win32_tell_file_func;
    pzlib_filefunc_def->zseek_file = win32_seek_file_func;
    pzlib_filefunc_def->zclose_file = win32_close_file_func;
    pzlib_filefunc_def->zerror_file = win32_error_file_func;
    pzlib_filefunc_def->opaque = ((void*)0);
}
