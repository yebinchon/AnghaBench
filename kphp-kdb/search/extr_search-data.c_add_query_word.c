
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ hash_t ;
struct TYPE_2__ {int sp; } ;


 TYPE_1__* IHE ;
 int MAX_WORDS ;
 int* QOTW ;
 char* QT ;
 scalar_t__* QW ;
 int Q_words ;
 int vkprintf (int,char*,scalar_t__,int) ;

__attribute__((used)) static int add_query_word (hash_t word, char tag) {
  int i;
  for (i = 0; i < Q_words; i++) {
    if (QW[i] == word) {
      return i;
    }
  }
  if (i == MAX_WORDS) {
    return -1;
  }
  vkprintf (3, "add_query_word (%llx, %d)\n", word, (int) tag);
  QW[i] = word;
  QT[i] = tag;
  IHE[i].sp = -2;
  QOTW[i] = 1;
  return Q_words++;
}
