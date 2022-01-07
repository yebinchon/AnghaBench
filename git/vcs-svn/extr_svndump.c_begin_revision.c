
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int buf; } ;
struct TYPE_7__ {int buf; } ;
struct TYPE_10__ {TYPE_3__ url; TYPE_2__ uuid; } ;
struct TYPE_6__ {int buf; } ;
struct TYPE_9__ {int timestamp; int log; TYPE_1__ author; int revision; } ;


 TYPE_5__ dump_ctx ;
 int fast_export_begin_commit (int ,int ,int *,int ,int ,int ,char const*) ;
 TYPE_4__ rev_ctx ;

__attribute__((used)) static void begin_revision(const char *remote_ref)
{
 if (!rev_ctx.revision)
  return;
 fast_export_begin_commit(rev_ctx.revision, rev_ctx.author.buf,
  &rev_ctx.log, dump_ctx.uuid.buf, dump_ctx.url.buf,
  rev_ctx.timestamp, remote_ref);
}
