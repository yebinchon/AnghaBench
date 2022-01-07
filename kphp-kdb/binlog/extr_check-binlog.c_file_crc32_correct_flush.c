
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* F; } ;
struct TYPE_11__ {long long crc32_off; scalar_t__ start_log_pos; TYPE_3__ S; } ;
typedef TYPE_4__ file_t ;
struct TYPE_12__ {int last_correct_off; int incorrect_logevents; int last_incorrect_off; scalar_t__ found; } ;
typedef TYPE_5__ crc32_stat_t ;
struct TYPE_9__ {TYPE_1__* info; } ;
struct TYPE_8__ {int filename; } ;


 int log_error (char*,int,int ,long long const,long long const,scalar_t__,scalar_t__) ;
 int log_warning (char*,int,int ,long long const,long long const,scalar_t__,scalar_t__) ;
 int memset (int ,int,int) ;
 scalar_t__ quick_test ;

__attribute__((used)) static void file_crc32_correct_flush (file_t *F, crc32_stat_t *S) {
  if (quick_test) {
    return;
  }
  const long long u = S->last_correct_off + 20, v = F->crc32_off;
  if (v - u >= 0x20000) {
    if (S->incorrect_logevents <= 1) {
      log_warning ("%lld incorrect and 0 correct LEV_CRC32 in the file '%s', file off [%lld, %lld), log pos [%lld, %lld)", S->incorrect_logevents, F->S.F->info->filename, u, v, F->start_log_pos + u, F->start_log_pos + v);
    }
    if (S->incorrect_logevents >= 3 && S->found) {
      log_error ("%lld incorrect and 0 correct LEV_CRC32 in the file '%s', file off [%lld, %lld), log pos [%lld, %lld)", S->incorrect_logevents, F->S.F->info->filename, u, v, F->start_log_pos + u, F->start_log_pos + v);
    }
  }
  S->found = 0;
  S->incorrect_logevents = 0;
  memset (S->last_incorrect_off, 0x7f, sizeof (S->last_incorrect_off));
}
