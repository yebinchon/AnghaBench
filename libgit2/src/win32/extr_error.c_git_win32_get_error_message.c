
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPWSTR ;
typedef int * HMODULE ;
typedef int DWORD ;


 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_HMODULE ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 scalar_t__ FormatMessageW (int,int *,int,int ,int *,int ,int *) ;
 int GIT_UNUSED (int *) ;
 int * GetModuleHandleW (char*) ;
 int LANG_NEUTRAL ;
 int LocalFree (int *) ;
 int MAKELANGID (int ,int ) ;
 int SUBLANG_DEFAULT ;
 int WINHTTP_ERROR_BASE ;
 int WINHTTP_ERROR_LAST ;
 scalar_t__ git__utf16_to_8_alloc (char**,int *) ;

char *git_win32_get_error_message(DWORD error_code)
{
 LPWSTR lpMsgBuf = ((void*)0);
 HMODULE hModule = ((void*)0);
 char *utf8_msg = ((void*)0);
 DWORD dwFlags =
  FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_IGNORE_INSERTS;

 if (!error_code)
  return ((void*)0);
 GIT_UNUSED(hModule);

 if (hModule)
  dwFlags |= FORMAT_MESSAGE_FROM_HMODULE;
 else
  dwFlags |= FORMAT_MESSAGE_FROM_SYSTEM;

 if (FormatMessageW(dwFlags, hModule, error_code,
  MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),
  (LPWSTR)&lpMsgBuf, 0, ((void*)0))) {


  if (git__utf16_to_8_alloc(&utf8_msg, lpMsgBuf) < 0)
   utf8_msg = ((void*)0);

  LocalFree(lpMsgBuf);
 }

 return utf8_msg;
}
