
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int logfile_ctx_t ;
struct TYPE_4__ {int salts_done; int salts_cnt; int digests_done; int digests_cnt; int hashes_cnt; int hashlist_format; int hashlist_mode; int hashfile; } ;
typedef TYPE_1__ hashes_t ;
struct TYPE_5__ {int * logfile_ctx; TYPE_1__* hashes; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 int logfile_top_string (int ) ;
 int logfile_top_uint (int ) ;

void hashes_logger (hashcat_ctx_t *hashcat_ctx)
{
  hashes_t *hashes = hashcat_ctx->hashes;
  logfile_ctx_t *logfile_ctx = hashcat_ctx->logfile_ctx;

  logfile_top_string (hashes->hashfile);
  logfile_top_uint (hashes->hashlist_mode);
  logfile_top_uint (hashes->hashlist_format);
  logfile_top_uint (hashes->hashes_cnt);
  logfile_top_uint (hashes->digests_cnt);
  logfile_top_uint (hashes->digests_done);
  logfile_top_uint (hashes->salts_cnt);
  logfile_top_uint (hashes->salts_done);
}
