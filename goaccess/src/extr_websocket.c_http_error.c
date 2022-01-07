
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int end_proc; } ;
typedef TYPE_1__ WSClient ;
struct TYPE_7__ {scalar_t__ accesslog; } ;


 int access_log (TYPE_1__*,int) ;
 int gettimeofday (int *,int *) ;
 int strlen (char const*) ;
 int ws_respond (TYPE_1__*,char const*,int ) ;
 TYPE_2__ wsconfig ;

__attribute__((used)) static int
http_error (WSClient * client, const char *buffer)
{

  gettimeofday (&client->end_proc, ((void*)0));
  if (wsconfig.accesslog)
    access_log (client, 400);

  return ws_respond (client, buffer, strlen (buffer));
}
