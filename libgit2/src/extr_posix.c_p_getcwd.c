
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 char* getcwd (char*,size_t) ;
 int git_path_mkposix (char*) ;
 int git_path_string_to_dir (char*,size_t) ;

int p_getcwd(char *buffer_out, size_t size)
{
 char *cwd_buffer;

 assert(buffer_out && size > 0);

 cwd_buffer = getcwd(buffer_out, size);

 if (cwd_buffer == ((void*)0))
  return -1;

 git_path_mkposix(buffer_out);
 git_path_string_to_dir(buffer_out, size);

 return 0;
}
