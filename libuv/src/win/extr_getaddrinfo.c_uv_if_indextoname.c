
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int NET_LUID ;
typedef size_t DWORD ;


 int ARRAY_SIZE (int *) ;
 int CP_UTF8 ;
 int ConvertInterfaceIndexToLuid (unsigned int,int *) ;
 int ConvertInterfaceLuidToNameW (int *,int *,int ) ;
 int GetLastError () ;
 int NDIS_IF_MAX_STRING_SIZE ;
 int UV_EINVAL ;
 int UV_ENOBUFS ;
 size_t WideCharToMultiByte (int ,int ,int *,int,char*,size_t,int *,int *) ;
 int uv_translate_sys_error (int) ;

int uv_if_indextoname(unsigned int ifindex, char* buffer, size_t* size) {
  NET_LUID luid;
  wchar_t wname[NDIS_IF_MAX_STRING_SIZE + 1];
  DWORD bufsize;
  int r;

  if (buffer == ((void*)0) || size == ((void*)0) || *size == 0)
    return UV_EINVAL;

  r = ConvertInterfaceIndexToLuid(ifindex, &luid);

  if (r != 0)
    return uv_translate_sys_error(r);

  r = ConvertInterfaceLuidToNameW(&luid, wname, ARRAY_SIZE(wname));

  if (r != 0)
    return uv_translate_sys_error(r);


  bufsize = WideCharToMultiByte(CP_UTF8, 0, wname, -1, ((void*)0), 0, ((void*)0), ((void*)0));

  if (bufsize == 0) {
    return uv_translate_sys_error(GetLastError());
  } else if (bufsize > *size) {
    *size = bufsize;
    return UV_ENOBUFS;
  }


  bufsize = WideCharToMultiByte(CP_UTF8,
                                0,
                                wname,
                                -1,
                                buffer,
                                *size,
                                ((void*)0),
                                ((void*)0));

  if (bufsize == 0)
    return uv_translate_sys_error(GetLastError());

  *size = bufsize - 1;
  return 0;
}
