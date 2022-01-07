
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int metafile_t ;


 int add_use (int *) ;
 int del_use (int *) ;

__attribute__((used)) static void reuse (metafile_t *meta) {
  del_use (meta);
  add_use (meta);
}
