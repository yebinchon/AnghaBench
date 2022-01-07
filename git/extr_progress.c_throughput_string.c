
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct strbuf {int dummy; } ;


 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_humanise_bytes (struct strbuf*,int ) ;
 int strbuf_humanise_rate (struct strbuf*,unsigned int) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static void throughput_string(struct strbuf *buf, uint64_t total,
         unsigned int rate)
{
 strbuf_reset(buf);
 strbuf_addstr(buf, ", ");
 strbuf_humanise_bytes(buf, total);
 strbuf_addstr(buf, " | ");
 strbuf_humanise_rate(buf, rate * 1024);
}
