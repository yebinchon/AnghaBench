
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int CP_UTF8 ;
 int ERROR_OUTOFMEMORY ;
 int GetLastError () ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int assert (int) ;
 scalar_t__ uv__malloc (int) ;

__attribute__((used)) static int uv_utf8_to_utf16_alloc(const char* s, WCHAR** ws_ptr) {
  int ws_len, r;
  WCHAR* ws;

  ws_len = MultiByteToWideChar(CP_UTF8,
                               0,
                               s,
                               -1,
                               ((void*)0),
                               0);
  if (ws_len <= 0) {
    return GetLastError();
  }

  ws = (WCHAR*) uv__malloc(ws_len * sizeof(WCHAR));
  if (ws == ((void*)0)) {
    return ERROR_OUTOFMEMORY;
  }

  r = MultiByteToWideChar(CP_UTF8,
                          0,
                          s,
                          -1,
                          ws,
                          ws_len);
  assert(r == ws_len);

  *ws_ptr = ws;
  return 0;
}
