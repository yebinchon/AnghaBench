
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt32 ;
typedef scalar_t__ BoolInt ;


 int FILE_ATTRIBUTE_ARCHIVE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FILE_ATTRIBUTE_HIDDEN ;
 int FILE_ATTRIBUTE_READONLY ;
 int FILE_ATTRIBUTE_SYSTEM ;

__attribute__((used)) static void GetAttribString(UInt32 wa, BoolInt isDir, char *s)
{
  s[0] = (char)(((wa & (1 << 4)) != 0 || isDir) ? 'D' : '.');
  s[1] = 0;

}
