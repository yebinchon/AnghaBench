
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int MB_ICONERROR ;
 int MessageBoxA (int ,char const*,char*,int ) ;
 int MessageBoxW (int ,char*,char*,int ) ;
 int printf (char*,char const*) ;

__attribute__((used)) static void PrintErrorMessage(const char *message)
{
  MessageBoxA(0, message, "7-Zip Error", MB_ICONERROR);


}
