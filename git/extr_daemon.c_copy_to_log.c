
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
typedef int FILE ;


 scalar_t__ EOF ;
 struct strbuf STRBUF_INIT ;
 int close (int) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int logerror (char*,...) ;
 scalar_t__ strbuf_getline_lf (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,int ) ;

__attribute__((used)) static void copy_to_log(int fd)
{
 struct strbuf line = STRBUF_INIT;
 FILE *fp;

 fp = fdopen(fd, "r");
 if (fp == ((void*)0)) {
  logerror("fdopen of error channel failed");
  close(fd);
  return;
 }

 while (strbuf_getline_lf(&line, fp) != EOF) {
  logerror("%s", line.buf);
  strbuf_setlen(&line, 0);
 }

 strbuf_release(&line);
 fclose(fp);
}
