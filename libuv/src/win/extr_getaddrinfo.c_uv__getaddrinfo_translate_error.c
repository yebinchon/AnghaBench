
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UV_EAI_AGAIN ;
 int UV_EAI_BADFLAGS ;
 int UV_EAI_FAIL ;
 int UV_EAI_FAMILY ;
 int UV_EAI_MEMORY ;
 int UV_EAI_NONAME ;
 int UV_EAI_SERVICE ;
 int UV_EAI_SOCKTYPE ;
 int uv_translate_sys_error (int) ;

int uv__getaddrinfo_translate_error(int sys_err) {
  switch (sys_err) {
    case 0: return 0;
    case 130: return UV_EAI_AGAIN;
    case 134: return UV_EAI_BADFLAGS;
    case 131: return UV_EAI_FAIL;
    case 135: return UV_EAI_FAMILY;
    case 128: return UV_EAI_MEMORY;
    case 132: return UV_EAI_NONAME;
    case 129: return UV_EAI_SERVICE;
    case 133: return UV_EAI_SOCKTYPE;
    default: return uv_translate_sys_error(sys_err);
  }
}
