
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_must_pass_ (int ,char*) ;
 int shell_out (char**) ;

__attribute__((used)) static void
fs_rm(const char *source)
{
 char *argv[4];

 argv[0] = "/bin/rm";
 argv[1] = "-Rf";
 argv[2] = (char *)source;
 argv[3] = ((void*)0);

 cl_must_pass_(
  shell_out(argv),
  "Failed to cleanup the sandbox"
 );
}
