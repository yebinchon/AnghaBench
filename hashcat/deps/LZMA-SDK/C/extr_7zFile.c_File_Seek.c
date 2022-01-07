
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ WRes ;
typedef int UInt64 ;
struct TYPE_5__ {int file; int handle; } ;
struct TYPE_4__ {int LowPart; scalar_t__ HighPart; } ;
typedef scalar_t__ LONG ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef int Int64 ;
typedef int ESzSeek ;
typedef int DWORD ;
typedef TYPE_2__ CSzFile ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 int FILE_BEGIN ;
 int FILE_CURRENT ;
 int FILE_END ;
 scalar_t__ GetLastError () ;
 scalar_t__ NO_ERROR ;
 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;



 int SetFilePointer (int ,int,scalar_t__*,int) ;
 int fseek (int ,long,int) ;
 int ftell (int ) ;

WRes File_Seek(CSzFile *p, Int64 *pos, ESzSeek origin)
{
  int moveMethod;
  int res;
  switch (origin)
  {
    case 128: moveMethod = SEEK_SET; break;
    case 130: moveMethod = SEEK_CUR; break;
    case 129: moveMethod = SEEK_END; break;
    default: return 1;
  }
  res = fseek(p->file, (long)*pos, moveMethod);
  *pos = ftell(p->file);
  return res;


}
