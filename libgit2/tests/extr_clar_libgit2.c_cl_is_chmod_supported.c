
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_git_mkfile (char*,char*) ;
 int cl_must_pass (int ) ;
 int cl_toggle_filemode (char*) ;
 int p_unlink (char*) ;

bool cl_is_chmod_supported(void)
{
 static int _is_supported = -1;

 if (_is_supported < 0) {
  cl_git_mkfile("filemode.t", "Test if filemode can be modified");
  _is_supported = cl_toggle_filemode("filemode.t");
  cl_must_pass(p_unlink("filemode.t"));
 }

 return _is_supported;
}
