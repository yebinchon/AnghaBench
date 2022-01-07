
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int normal_io_write_fl (char const*,int,struct strbuf*) ;
 int strbuf_addf (struct strbuf*,char*,int,int,int,double) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void fn_child_exit_fl(const char *file, int line,
        uint64_t us_elapsed_absolute, int cid, int pid,
        int code, uint64_t us_elapsed_child)
{
 struct strbuf buf_payload = STRBUF_INIT;
 double elapsed = (double)us_elapsed_child / 1000000.0;

 strbuf_addf(&buf_payload, "child_exit[%d] pid:%d code:%d elapsed:%.6f",
      cid, pid, code, elapsed);
 normal_io_write_fl(file, line, &buf_payload);
 strbuf_release(&buf_payload);
}
