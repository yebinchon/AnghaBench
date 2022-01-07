
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPSTR ;


 int DebugBreak () ;
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 int FormatMessageA (int,int *,int const,int ,int ,int ,int *) ;
 int LANG_NEUTRAL ;
 int LocalFree (char*) ;
 int MAKELANGID (int ,int ) ;
 int SUBLANG_DEFAULT ;
 int abort () ;
 int fprintf (int ,char*,...) ;
 int stderr ;

void uv_fatal_error(const int errorno, const char* syscall) {
  char* buf = ((void*)0);
  const char* errmsg;

  FormatMessageA(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM |
      FORMAT_MESSAGE_IGNORE_INSERTS, ((void*)0), errorno,
      MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT), (LPSTR)&buf, 0, ((void*)0));

  if (buf) {
    errmsg = buf;
  } else {
    errmsg = "Unknown error";
  }



  if (syscall) {
    fprintf(stderr, "%s: (%d) %s", syscall, errorno, errmsg);
  } else {
    fprintf(stderr, "(%d) %s", errorno, errmsg);
  }

  if (buf) {
    LocalFree(buf);
  }

  DebugBreak();
  abort();
}
