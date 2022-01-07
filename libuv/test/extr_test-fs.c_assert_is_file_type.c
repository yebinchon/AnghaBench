
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ uv_dirent_t ;


 int ASSERT (int) ;
 scalar_t__ UV_DIRENT_FILE ;
 scalar_t__ UV_DIRENT_UNKNOWN ;

__attribute__((used)) static void assert_is_file_type(uv_dirent_t dent) {
  ASSERT(dent.type == UV_DIRENT_UNKNOWN);

}
