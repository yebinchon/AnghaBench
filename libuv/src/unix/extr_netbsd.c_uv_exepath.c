
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ARRAY_SIZE (char*) ;
 int CTL_KERN ;
 int KERN_PROC_ARGS ;
 int KERN_PROC_PATHNAME ;
 int PATH_MAX ;
 int UV_EINVAL ;
 int UV__ERR (int ) ;
 int errno ;
 size_t strlen (char*) ;
 scalar_t__ sysctl (int*,int,char*,size_t*,int *,int ) ;
 int uv__strscpy (char*,char*,size_t) ;

int uv_exepath(char* buffer, size_t* size) {




  char int_buf[PATH_MAX];
  size_t int_size;
  int mib[4];

  if (buffer == ((void*)0) || size == ((void*)0) || *size == 0)
    return UV_EINVAL;

  mib[0] = CTL_KERN;
  mib[1] = KERN_PROC_ARGS;
  mib[2] = -1;
  mib[3] = KERN_PROC_PATHNAME;
  int_size = ARRAY_SIZE(int_buf);

  if (sysctl(mib, 4, int_buf, &int_size, ((void*)0), 0))
    return UV__ERR(errno);





  uv__strscpy(buffer, int_buf, *size);


  *size = strlen(buffer);

  return 0;
}
