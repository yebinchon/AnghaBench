
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t dwPageSize; } ;
typedef TYPE_1__ SYSTEM_INFO ;


 int GetSystemInfo (TYPE_1__*) ;
 size_t LG_PAGE ;
 int _SC_PAGESIZE ;
 size_t getpagesize () ;
 long sysconf (int ) ;

__attribute__((used)) static size_t
os_page_detect(void) {
 long result = sysconf(_SC_PAGESIZE);
 if (result == -1) {
  return LG_PAGE;
 }
 return (size_t)result;

}
