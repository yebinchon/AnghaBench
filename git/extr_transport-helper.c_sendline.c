
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {char* buf; int len; } ;
struct helper_data {TYPE_1__* helper; } ;
struct TYPE_2__ {int in; } ;


 int _ (char*) ;
 scalar_t__ debug ;
 int die_errno (int ) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 scalar_t__ write_in_full (int ,char*,int ) ;

__attribute__((used)) static void sendline(struct helper_data *helper, struct strbuf *buffer)
{
 if (debug)
  fprintf(stderr, "Debug: Remote helper: -> %s", buffer->buf);
 if (write_in_full(helper->helper->in, buffer->buf, buffer->len) < 0)
  die_errno(_("full write to remote helper failed"));
}
