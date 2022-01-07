
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int normal_io_write_fl (char const*,int,struct strbuf*) ;
 int sq_append_quote_argv_pretty (struct strbuf*,char const**) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,int) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void fn_exec_fl(const char *file, int line, uint64_t us_elapsed_absolute,
         int exec_id, const char *exe, const char **argv)
{
 struct strbuf buf_payload = STRBUF_INIT;

 strbuf_addf(&buf_payload, "exec[%d] ", exec_id);
 if (exe) {
  strbuf_addstr(&buf_payload, exe);
  strbuf_addch(&buf_payload, ' ');
 }
 sq_append_quote_argv_pretty(&buf_payload, argv);
 normal_io_write_fl(file, line, &buf_payload);
 strbuf_release(&buf_payload);
}
