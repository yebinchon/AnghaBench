
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WSADATA ;
typedef int WORD ;


 int MAKEWORD (int,int) ;
 int WSAStartup (int ,int *) ;
 int event_init () ;

int
main(int argc, char **argv)
{
 event_init();

 return (0);
}
