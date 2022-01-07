
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _clar_path ;
 int chdir (char*) ;
 int cl_must_pass (int ) ;
 int fs_rm (char*) ;

__attribute__((used)) static void clar_unsandbox(void)
{
 if (_clar_path[0] == '\0')
  return;

 cl_must_pass(chdir(".."));

 fs_rm(_clar_path);
}
