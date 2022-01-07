
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dwPageSize; } ;
typedef TYPE_1__ SYSTEM_INFO ;
typedef scalar_t__ DWORD ;


 int GetSystemInfo (TYPE_1__*) ;

__attribute__((used)) static DWORD get_page_size(void)
{
 static DWORD page_size;
 SYSTEM_INFO sys;

 if (!page_size) {
  GetSystemInfo(&sys);
  page_size = sys.dwPageSize;
 }

 return page_size;
}
