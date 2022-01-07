
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ hash_t ;
struct TYPE_2__ {scalar_t__ word; } ;


 TYPE_1__* P ;
 int PC ;
 int fprintf (int ,char*,int,int) ;
 int stderr ;
 scalar_t__ verbosity ;

__attribute__((used)) static int count_words (void) {
  int c, m, e, i;
  hash_t word;

  if (!PC) {
    return 0;
  }

  word = P[0].word;
  c = 1;
  m = 0;
  e = 0;
  for (i = 1; i < PC; i++) {
    if (word != P[i].word) {
      word = P[i].word;
      if (!m) { e++; }
      m = 0;
      c++;
    } else {
      m++;
    }
  }

  if (!m) { e++; }


  if (verbosity > 0) {
    fprintf (stderr, "%d distinct words, %d hapax legomena\n", c, e);
  }
  return c;

}
