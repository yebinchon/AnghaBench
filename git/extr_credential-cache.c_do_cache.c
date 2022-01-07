
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 scalar_t__ ECONNREFUSED ;
 scalar_t__ ENOENT ;
 int FLAG_RELAY ;
 int FLAG_SPAWN ;
 struct strbuf STRBUF_INIT ;
 int die_errno (char*) ;
 scalar_t__ errno ;
 scalar_t__ send_request (char const*,struct strbuf*) ;
 int spawn_daemon (char const*) ;
 int strbuf_addf (struct strbuf*,char*,...) ;
 scalar_t__ strbuf_read (struct strbuf*,int ,int ) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void do_cache(const char *socket, const char *action, int timeout,
       int flags)
{
 struct strbuf buf = STRBUF_INIT;

 strbuf_addf(&buf, "action=%s\n", action);
 strbuf_addf(&buf, "timeout=%d\n", timeout);
 if (flags & FLAG_RELAY) {
  if (strbuf_read(&buf, 0, 0) < 0)
   die_errno("unable to relay credential");
 }

 if (send_request(socket, &buf) < 0) {
  if (errno != ENOENT && errno != ECONNREFUSED)
   die_errno("unable to connect to cache daemon");
  if (flags & FLAG_SPAWN) {
   spawn_daemon(socket);
   if (send_request(socket, &buf) < 0)
    die_errno("unable to connect to cache daemon");
  }
 }
 strbuf_release(&buf);
}
