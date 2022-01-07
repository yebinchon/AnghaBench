
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; int buf; } ;
struct protocol_capability {int name; scalar_t__ (* advertise ) (int ,struct strbuf*) ;} ;


 int ARRAY_SIZE (struct protocol_capability*) ;
 struct strbuf STRBUF_INIT ;
 struct protocol_capability* capabilities ;
 int packet_flush (int) ;
 int packet_write (int,int ,scalar_t__) ;
 int strbuf_addbuf (struct strbuf*,struct strbuf*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 scalar_t__ stub1 (int ,struct strbuf*) ;
 int the_repository ;

__attribute__((used)) static void advertise_capabilities(void)
{
 struct strbuf capability = STRBUF_INIT;
 struct strbuf value = STRBUF_INIT;
 int i;

 for (i = 0; i < ARRAY_SIZE(capabilities); i++) {
  struct protocol_capability *c = &capabilities[i];

  if (c->advertise(the_repository, &value)) {
   strbuf_addstr(&capability, c->name);

   if (value.len) {
    strbuf_addch(&capability, '=');
    strbuf_addbuf(&capability, &value);
   }

   strbuf_addch(&capability, '\n');
   packet_write(1, capability.buf, capability.len);
  }

  strbuf_reset(&capability);
  strbuf_reset(&value);
 }

 packet_flush(1);
 strbuf_release(&capability);
 strbuf_release(&value);
}
