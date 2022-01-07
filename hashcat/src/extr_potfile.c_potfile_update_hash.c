
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {int * pfp; } ;
struct TYPE_9__ {TYPE_1__ fp; } ;
typedef TYPE_2__ loopback_ctx_t ;
struct TYPE_10__ {TYPE_2__* loopback_ctx; } ;
typedef TYPE_3__ hashcat_ctx_t ;
struct TYPE_11__ {char* pw_buf; int pw_len; int cracked; } ;
typedef TYPE_4__ hash_t ;


 scalar_t__ hcmalloc (int) ;
 int loopback_write_append (TYPE_3__*,int *,unsigned int) ;
 int memcpy (char*,char*,int) ;

void potfile_update_hash (hashcat_ctx_t *hashcat_ctx, hash_t *found, char *line_pw_buf, int line_pw_len)
{
  const loopback_ctx_t *loopback_ctx = hashcat_ctx->loopback_ctx;

  if (found == ((void*)0)) return;

  char *pw_buf = line_pw_buf;
  int pw_len = line_pw_len;

  found->pw_buf = (char *) hcmalloc (pw_len + 1);
  found->pw_len = pw_len;

  if (pw_buf)
  {
    memcpy (found->pw_buf, pw_buf, pw_len);

    found->pw_buf[found->pw_len] = 0;
  }

  found->cracked = 1;



  if (loopback_ctx->fp.pfp != ((void*)0))
  {
    loopback_write_append (hashcat_ctx, (u8 *) pw_buf, (unsigned int) pw_len);
  }
}
