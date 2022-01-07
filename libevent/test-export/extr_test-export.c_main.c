
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WSADATA ;


 int MAKEWORD (int,int) ;
 int WSACleanup () ;
 int WSAStartup (int ,int *) ;
 int test () ;

int
main(int argc, char const *argv[])
{
 int r = 0;






 r = test();



 return r;
}
