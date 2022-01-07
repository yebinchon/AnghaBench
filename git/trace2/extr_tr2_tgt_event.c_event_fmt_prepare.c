
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* buf; } ;
struct tr2tls_thread_ctx {TYPE_1__ thread_name; } ;
struct tr2_tbuf {char const* buf; } ;
struct repository {int trace2_repo_id; } ;
struct json_writer {int dummy; } ;


 int jw_object_intmax (struct json_writer*,char*,int) ;
 int jw_object_string (struct json_writer*,char*,char const*) ;
 int strcmp (char const*,char*) ;
 char const* tr2_sid_get () ;
 int tr2_tbuf_utc_datetime_extended (struct tr2_tbuf*) ;
 int tr2env_event_be_brief ;
 struct tr2tls_thread_ctx* tr2tls_get_self () ;

__attribute__((used)) static void event_fmt_prepare(const char *event_name, const char *file,
         int line, const struct repository *repo,
         struct json_writer *jw)
{
 struct tr2tls_thread_ctx *ctx = tr2tls_get_self();
 struct tr2_tbuf tb_now;

 jw_object_string(jw, "event", event_name);
 jw_object_string(jw, "sid", tr2_sid_get());
 jw_object_string(jw, "thread", ctx->thread_name.buf);




 if (!tr2env_event_be_brief || !strcmp(event_name, "version") ||
     !strcmp(event_name, "atexit")) {
  tr2_tbuf_utc_datetime_extended(&tb_now);
  jw_object_string(jw, "time", tb_now.buf);
 }

 if (!tr2env_event_be_brief && file && *file) {
  jw_object_string(jw, "file", file);
  jw_object_intmax(jw, "line", line);
 }

 if (repo)
  jw_object_intmax(jw, "repo", repo->trace2_repo_id);
}
