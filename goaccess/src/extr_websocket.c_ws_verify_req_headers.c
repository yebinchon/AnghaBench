
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ws_sock_ver; int ws_key; int connection; int origin; int path; int protocol; int method; int host; } ;
typedef TYPE_1__ WSHeaders ;
struct TYPE_5__ {scalar_t__ origin; } ;


 scalar_t__ strcasecmp (scalar_t__,int ) ;
 TYPE_2__ wsconfig ;

__attribute__((used)) static int
ws_verify_req_headers (WSHeaders * headers)
{
  if (!headers->host)
    return 1;
  if (!headers->method)
    return 1;
  if (!headers->protocol)
    return 1;
  if (!headers->path)
    return 1;
  if (wsconfig.origin && !headers->origin)
    return 1;
  if (wsconfig.origin && strcasecmp (wsconfig.origin, headers->origin) != 0)
    return 1;
  if (!headers->connection)
    return 1;
  if (!headers->ws_key)
    return 1;
  if (!headers->ws_sock_ver)
    return 1;
  return 0;
}
