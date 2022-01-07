
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONST_L2T ;
 int RC_UP ;
 int TAG_Valid ;
 int fld_const (int *,int,int ) ;

__attribute__((used)) static void fldl2t(int rc)
{
 fld_const(&CONST_L2T, (rc == RC_UP) ? 1 : 0, TAG_Valid);
}
