
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int benchmark; int keyspace; } ;
typedef TYPE_1__ user_options_t ;
struct TYPE_9__ {int hc_hash; } ;
typedef TYPE_2__ user_options_extra_t ;
struct TYPE_10__ {scalar_t__ hashlist_mode; int hashfile; } ;
typedef TYPE_3__ hashes_t ;
struct TYPE_11__ {int opts_type; } ;
typedef TYPE_4__ hashconfig_t ;
struct TYPE_12__ {TYPE_2__* user_options_extra; TYPE_1__* user_options; TYPE_3__* hashes; TYPE_4__* hashconfig; } ;
typedef TYPE_5__ hashcat_ctx_t ;


 scalar_t__ HL_MODE_ARG ;
 scalar_t__ HL_MODE_FILE_BINARY ;
 scalar_t__ HL_MODE_FILE_PLAIN ;
 int OPTS_TYPE_BINARY_HASHFILE ;
 int errno ;
 int event_log_error (TYPE_5__*,char*,int ,int ) ;
 int hc_path_exist (int ) ;
 int hc_path_read (int ) ;
 int strerror (int ) ;

int hashes_init_filename (hashcat_ctx_t *hashcat_ctx)
{
  hashconfig_t *hashconfig = hashcat_ctx->hashconfig;
  hashes_t *hashes = hashcat_ctx->hashes;
  user_options_t *user_options = hashcat_ctx->user_options;
  user_options_extra_t *user_options_extra = hashcat_ctx->user_options_extra;





  if (hashconfig->opts_type & OPTS_TYPE_BINARY_HASHFILE)
  {
    hashes->hashlist_mode = HL_MODE_FILE_BINARY;

    if ((user_options->benchmark == 0) && (user_options->keyspace == 0))
    {
      if (hc_path_read (user_options_extra->hc_hash) == 0)
      {
        event_log_error (hashcat_ctx, "%s: %s", user_options_extra->hc_hash, strerror (errno));

        return -1;
      }

      hashes->hashfile = user_options_extra->hc_hash;
    }
  }
  else
  {
    hashes->hashlist_mode = (hc_path_exist (user_options_extra->hc_hash) == 1) ? HL_MODE_FILE_PLAIN : HL_MODE_ARG;

    if (hashes->hashlist_mode == HL_MODE_FILE_PLAIN)
    {
      hashes->hashfile = user_options_extra->hc_hash;
    }
  }

  return 0;
}
