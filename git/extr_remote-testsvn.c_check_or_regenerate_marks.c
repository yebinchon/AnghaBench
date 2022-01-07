
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
typedef int FILE ;


 scalar_t__ EOF ;
 struct strbuf STRBUF_INIT ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int free_notes (int *) ;
 int init_notes (int *,int ,int *,int ) ;
 int marksfilename ;
 int notes_ref ;
 int regenerate_marks () ;
 scalar_t__ starts_with (int ,int ) ;
 int strbuf_addf (struct strbuf*,char*,int) ;
 scalar_t__ strbuf_getline_lf (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 int * xfopen (int ,char*) ;

__attribute__((used)) static void check_or_regenerate_marks(int latestrev)
{
 FILE *marksfile;
 struct strbuf sb = STRBUF_INIT;
 struct strbuf line = STRBUF_INIT;
 int found = 0;

 if (latestrev < 1)
  return;

 init_notes(((void*)0), notes_ref, ((void*)0), 0);
 marksfile = fopen(marksfilename, "r");
 if (!marksfile) {
  regenerate_marks();
  marksfile = xfopen(marksfilename, "r");
  fclose(marksfile);
 } else {
  strbuf_addf(&sb, ":%d ", latestrev);
  while (strbuf_getline_lf(&line, marksfile) != EOF) {
   if (starts_with(line.buf, sb.buf)) {
    found++;
    break;
   }
  }
  fclose(marksfile);
  if (!found)
   regenerate_marks();
 }
 free_notes(((void*)0));
 strbuf_release(&sb);
 strbuf_release(&line);
}
