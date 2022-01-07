
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid ;
struct uv__sysctl_args {int* name; char* oldval; size_t* oldlenp; int nlen; } ;
typedef int args ;


 int ARRAY_SIZE (int*) ;
 int SYS__sysctl ;
 int UV_EIO ;
 int UV_ENOSYS ;
 int UV__ERR (int ) ;
 int errno ;
 int memcpy (char*,char*,size_t) ;
 int memset (struct uv__sysctl_args*,int ,int) ;
 int syscall (int ,struct uv__sysctl_args*) ;

int uv__random_sysctl(void* buf, size_t buflen) {
  static int name[] = {1 , 40 , 6 };
  struct uv__sysctl_args args;
  char uuid[16];
  char* p;
  char* pe;
  size_t n;

  p = buf;
  pe = p + buflen;

  while (p < pe) {
    memset(&args, 0, sizeof(args));

    args.name = name;
    args.nlen = ARRAY_SIZE(name);
    args.oldval = uuid;
    args.oldlenp = &n;
    n = sizeof(uuid);
    {
      (void) &args;
      return UV_ENOSYS;
    }


    if (n != sizeof(uuid))
      return UV_EIO;





    uuid[6] = uuid[14];
    uuid[8] = uuid[15];

    n = pe - p;
    if (n > 14)
      n = 14;

    memcpy(p, uuid, n);
    p += n;
  }

  return 0;
}
