
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdfile_t ;


 scalar_t__ XDL_ISSPACE (char const) ;
 long xdl_get_rec (int *,long,char const**) ;

__attribute__((used)) static int is_empty_rec(xdfile_t *xdf, long ri)
{
 const char *rec;
 long len = xdl_get_rec(xdf, ri, &rec);

 while (len > 0 && XDL_ISSPACE(*rec)) {
  rec++;
  len--;
 }
 return !len;
}
