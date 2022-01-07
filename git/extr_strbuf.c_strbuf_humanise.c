
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
typedef int off_t ;


 int Q_ (char*,char*,unsigned int) ;
 int _ (char*) ;
 int strbuf_addf (struct strbuf*,int ,unsigned int,...) ;

__attribute__((used)) static void strbuf_humanise(struct strbuf *buf, off_t bytes,
     int humanise_rate)
{
 if (bytes > 1 << 30) {
  strbuf_addf(buf,
    humanise_rate == 0 ?

     _("%u.%2.2u GiB") :

     _("%u.%2.2u GiB/s"),
       (unsigned)(bytes >> 30),
       (unsigned)(bytes & ((1 << 30) - 1)) / 10737419);
 } else if (bytes > 1 << 20) {
  unsigned x = bytes + 5243;
  strbuf_addf(buf,
    humanise_rate == 0 ?

     _("%u.%2.2u MiB") :

     _("%u.%2.2u MiB/s"),
       x >> 20, ((x & ((1 << 20) - 1)) * 100) >> 20);
 } else if (bytes > 1 << 10) {
  unsigned x = bytes + 5;
  strbuf_addf(buf,
    humanise_rate == 0 ?

     _("%u.%2.2u KiB") :

     _("%u.%2.2u KiB/s"),
       x >> 10, ((x & ((1 << 10) - 1)) * 100) >> 10);
 } else {
  strbuf_addf(buf,
    humanise_rate == 0 ?

     Q_("%u byte", "%u bytes", (unsigned)bytes) :

     Q_("%u byte/s", "%u bytes/s", (unsigned)bytes),
    (unsigned)bytes);
 }
}
