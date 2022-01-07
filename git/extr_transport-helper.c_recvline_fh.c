
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
typedef int FILE ;


 scalar_t__ EOF ;
 scalar_t__ debug ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 scalar_t__ strbuf_getline (struct strbuf*,int *) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static int recvline_fh(FILE *helper, struct strbuf *buffer)
{
 strbuf_reset(buffer);
 if (debug)
  fprintf(stderr, "Debug: Remote helper: Waiting...\n");
 if (strbuf_getline(buffer, helper) == EOF) {
  if (debug)
   fprintf(stderr, "Debug: Remote helper quit.\n");
  return 1;
 }

 if (debug)
  fprintf(stderr, "Debug: Remote helper: <- %s\n", buffer->buf);
 return 0;
}
