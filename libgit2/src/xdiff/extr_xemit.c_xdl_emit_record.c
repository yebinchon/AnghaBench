
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdfile_t ;
typedef int xdemitcb_t ;


 scalar_t__ strlen (char const*) ;
 scalar_t__ xdl_emit_diffrec (char const*,long,char const*,long,int *) ;
 long xdl_get_rec (int *,long,char const**) ;

__attribute__((used)) static int xdl_emit_record(xdfile_t *xdf, long ri, char const *pre, xdemitcb_t *ecb) {
 long size, psize = (long)strlen(pre);
 char const *rec;

 size = xdl_get_rec(xdf, ri, &rec);
 if (xdl_emit_diffrec(rec, size, pre, psize, ecb) < 0) {

  return -1;
 }

 return 0;
}
