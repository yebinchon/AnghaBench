
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int c; } ;
typedef TYPE_1__ md5_t ;


 int md5 (unsigned char*,int ,int ) ;
 int memset (int ,int ,int) ;
 int strlen (char const* const) ;

__attribute__((used)) static void uri2md5 (const char *const uri, md5_t *M) {
  md5 ((unsigned char *) uri, strlen (uri), M->c);



}
