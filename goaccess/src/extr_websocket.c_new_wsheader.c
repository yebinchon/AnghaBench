
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int reading; int buf; } ;
typedef TYPE_1__ WSHeaders ;


 int memset (int ,int ,int) ;
 TYPE_1__* xcalloc (int,int) ;

__attribute__((used)) static WSHeaders *
new_wsheader (void)
{
  WSHeaders *headers = xcalloc (1, sizeof (WSHeaders));
  memset (headers->buf, 0, sizeof (headers->buf));
  headers->reading = 1;

  return headers;
}
