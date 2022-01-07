
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WSServer ;


 int * xcalloc (int,int) ;

__attribute__((used)) static WSServer *
new_wsserver (void)
{
  WSServer *server = xcalloc (1, sizeof (WSServer));

  return server;
}
