
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
typedef int FILE ;


 int CHUNKSIZE ;
 int feof (int *) ;
 scalar_t__ ferror (int *) ;
 scalar_t__ strbuf_fread (struct strbuf*,int ,int *) ;

__attribute__((used)) static int read_message(FILE *f, struct strbuf *all_msgs)
{
 do {
  if (strbuf_fread(all_msgs, CHUNKSIZE, f) <= 0)
   break;
 } while (!feof(f));

 return ferror(f) ? -1 : 0;
}
