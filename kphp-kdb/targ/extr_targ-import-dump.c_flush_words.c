
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cword {int num; int c; int s; } ;


 int * TL ;
 scalar_t__ TS ;
 int Tc ;
 scalar_t__ Tw ;
 int asort (int ,int) ;
 int fprintf (int ,char*,int,long) ;
 int memcpy (int ,int ,int) ;
 int stderr ;
 int strcmp (int ,int ) ;
 int strlen (int ) ;
 scalar_t__ verbosity ;
 struct cword* write_alloc (int) ;

__attribute__((used)) static void flush_words (void) {
  int i, j, len;
  struct cword *W;
  if (!Tc) { return; }
  if (verbosity > 0) {
    fprintf (stderr, "sorting words: %d words, %ld chars\n", Tc, (long)(Tw - TS));
  }
  asort (0, Tc-1);
  i = 0;
  while (i < Tc) {
    j = i+1;
    len = strlen (TL[i]);
    while (j < Tc && !strcmp (TL[i], TL[j])) { j++; }
    W = write_alloc (6 + len);
    W->num = j - i;
    W->c = len;
    memcpy (W->s, TL[i], len+1);
    i = j;
  }
  W = write_alloc (4);
  W->num = -1;
  Tc = 0;
  Tw = TS;
}
