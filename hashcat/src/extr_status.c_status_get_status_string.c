
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int devices_status; int checkpoint_shutdown; } ;
typedef TYPE_1__ status_ctx_t ;
struct TYPE_5__ {TYPE_1__* status_ctx; } ;
typedef TYPE_2__ hashcat_ctx_t ;
 char const* ST_0000 ;
 char const* ST_0001 ;
 char const* ST_0002 ;
 char const* ST_0003 ;
 char const* ST_0004 ;
 char const* ST_0005 ;
 char const* ST_0006 ;
 char const* ST_0007 ;
 char const* ST_0008 ;
 char const* ST_0009 ;
 char const* ST_0010 ;
 char const* ST_0011 ;
 char const* ST_0012 ;
 char const* ST_0013 ;
 char const* ST_9999 ;

const char *status_get_status_string (const hashcat_ctx_t *hashcat_ctx)
{
  const status_ctx_t *status_ctx = hashcat_ctx->status_ctx;

  const int devices_status = status_ctx->devices_status;



  if (devices_status == 129)
  {
    if (status_ctx->checkpoint_shutdown == 1)
    {
      return ST_0012;
    }
  }

  switch (devices_status)
  {
    case 132: return ST_0000;
    case 137: return ST_0001;
    case 128: return ST_0002;
    case 129: return ST_0003;
    case 131: return ST_0004;
    case 133: return ST_0005;
    case 135: return ST_0006;
    case 140: return ST_0007;
    case 130: return ST_0008;
    case 136: return ST_0009;
    case 139: return ST_0010;
    case 138: return ST_0011;
    case 134: return ST_0013;
  }

  return ST_9999;
}
