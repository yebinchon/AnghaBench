
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; int len; } ;
typedef int FILE ;


 scalar_t__ EOF ;
 struct strbuf STRBUF_INIT ;
 int error (char*,char*) ;
 int fclose (int *) ;
 int * fopen_or_warn (char const*,char*) ;
 scalar_t__ parse_pack_def (char const*,int ) ;
 scalar_t__ skip_prefix (char*,char*,char const**) ;
 scalar_t__ strbuf_getline (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int read_pack_info_file(const char *infofile)
{
 FILE *fp;
 struct strbuf line = STRBUF_INIT;
 int old_cnt = 0;
 int stale = 1;

 fp = fopen_or_warn(infofile, "r");
 if (!fp)
  return 1;

 while (strbuf_getline(&line, fp) != EOF) {
  const char *arg;

  if (!line.len)
   continue;

  if (skip_prefix(line.buf, "P ", &arg)) {

   if (parse_pack_def(arg, old_cnt++))
    goto out_stale;
  } else if (line.buf[0] == 'D') {

   goto out_stale;
  } else if (line.buf[0] == 'T') {

   goto out_stale;
  } else {
   error("unrecognized: %s", line.buf);
  }
 }
 stale = 0;

 out_stale:
 strbuf_release(&line);
 fclose(fp);
 return stale;
}
