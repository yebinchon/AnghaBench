
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UV_EAI_ADDRFAMILY ;
 int UV_EAI_AGAIN ;
 int UV_EAI_BADFLAGS ;
 int UV_EAI_BADHINTS ;
 int UV_EAI_CANCELED ;
 int UV_EAI_FAIL ;
 int UV_EAI_FAMILY ;
 int UV_EAI_MEMORY ;
 int UV_EAI_NODATA ;
 int UV_EAI_NONAME ;
 int UV_EAI_OVERFLOW ;
 int UV_EAI_PROTOCOL ;
 int UV_EAI_SERVICE ;
 int UV_EAI_SOCKTYPE ;
 int UV__ERR (int ) ;
 int abort () ;
 int assert (int) ;
 int errno ;

int uv__getaddrinfo_translate_error(int sys_err) {
  switch (sys_err) {
  case 0: return 0;

  case 142: return UV_EAI_ADDRFAMILY;


  case 141: return UV_EAI_AGAIN;


  case 140: return UV_EAI_BADFLAGS;


  case 139: return UV_EAI_BADHINTS;


  case 138: return UV_EAI_CANCELED;


  case 137: return UV_EAI_FAIL;


  case 136: return UV_EAI_FAMILY;


  case 135: return UV_EAI_MEMORY;


  case 134: return UV_EAI_NODATA;



  case 133: return UV_EAI_NONAME;



  case 132: return UV_EAI_OVERFLOW;


  case 131: return UV_EAI_PROTOCOL;


  case 130: return UV_EAI_SERVICE;


  case 129: return UV_EAI_SOCKTYPE;


  case 128: return UV__ERR(errno);

  }
  assert(!"unknown EAI_* error code");
  abort();

  return 0;

}
