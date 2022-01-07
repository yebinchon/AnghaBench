
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int PATH_MAX ;
 int _PC_PATH_MAX ;
 char* _fullpath (char*,int ,int) ;
 int free (char*) ;
 int jv_free (int ) ;
 char* jv_mem_alloc (int) ;
 int jv_string (char*) ;
 int jv_string_value (int ) ;
 int pathconf (int ,int ) ;
 char* realpath (int ,char*) ;

jv jq_realpath(jv path) {
  int path_max;
  char *buf = ((void*)0);



  path_max = PATH_MAX;

  if (path_max > 0) {
     buf = jv_mem_alloc(path_max);
  }



  char *tmp = realpath(jv_string_value(path), buf);

  if (tmp == ((void*)0)) {
    free(buf);
    return path;
  }
  jv_free(path);
  path = jv_string(tmp);
  free(tmp);
  return path;
}
