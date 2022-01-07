
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_storage_file {int md5; int size; } ;


 int md5 (unsigned char*,int ,unsigned char*) ;
 int memcmp (unsigned char*,int ,int) ;

__attribute__((used)) static int md5_check (struct lev_storage_file *E, unsigned char *a) {
  unsigned char m[16];
  md5 (a, E->size, m);
  return !memcmp (m, E->md5, 16);
}
