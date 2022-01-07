
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uv_dirent_type_t ;
struct TYPE_3__ {int d_type; } ;
typedef TYPE_1__ uv__dirent_t ;


 int UV_DIRENT_BLOCK ;
 int UV_DIRENT_CHAR ;
 int UV_DIRENT_DIR ;
 int UV_DIRENT_FIFO ;
 int UV_DIRENT_FILE ;
 int UV_DIRENT_LINK ;
 int UV_DIRENT_SOCKET ;
 int UV_DIRENT_UNKNOWN ;
uv_dirent_type_t uv__fs_get_dirent_type(uv__dirent_t* dent) {
  uv_dirent_type_t type;
  type = UV_DIRENT_UNKNOWN;


  return type;
}
