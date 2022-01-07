
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* str; int len; } ;


 char** args_mem ;
 int assert (int) ;
 int memcpy (char*,char*,size_t) ;
 TYPE_1__ process_title ;
 int strlen (char*) ;
 char** uv__malloc (size_t) ;

char** uv_setup_args(int argc, char** argv) {
  char** new_argv;
  size_t size;
  char* s;
  int i;

  if (argc <= 0)
    return argv;


  size = 0;
  for (i = 0; i < argc; i++)
    size += strlen(argv[i]) + 1;






  process_title.str = argv[0];
  process_title.len = argv[argc - 1] + strlen(argv[argc - 1]) - argv[0];
  assert(process_title.len + 1 == size);



  size += (argc + 1) * sizeof(char*);

  new_argv = uv__malloc(size);
  if (new_argv == ((void*)0))
    return argv;
  args_mem = new_argv;


  s = (char*) &new_argv[argc + 1];
  for (i = 0; i < argc; i++) {
    size = strlen(argv[i]) + 1;
    memcpy(s, argv[i], size);
    new_argv[i] = s;
    s += size;
  }
  new_argv[i] = ((void*)0);

  return new_argv;
}
