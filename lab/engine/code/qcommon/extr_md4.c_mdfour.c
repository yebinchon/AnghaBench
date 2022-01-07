
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdfour {int dummy; } ;
typedef int byte ;


 int mdfour_begin (struct mdfour*) ;
 int mdfour_result (struct mdfour*,int *) ;
 int mdfour_update (struct mdfour*,int *,int) ;

__attribute__((used)) static void mdfour(byte *out, byte *in, int n)
{
 struct mdfour md;
 mdfour_begin(&md);
 mdfour_update(&md, in, n);
 mdfour_result(&md, out);
}
