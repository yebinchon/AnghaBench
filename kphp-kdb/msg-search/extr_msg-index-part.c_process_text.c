
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int hash_t ;
struct TYPE_2__ {int order; int message_id; int hash; } ;


 size_t MAX_PAIRS ;
 TYPE_1__* P ;
 size_t Pc ;
 int assert (int) ;
 int* is_letter ;
 int md5 (unsigned char*,int,unsigned char*) ;

void process_text (char *text, int msg_id, int order) {


  if (text[0] == 'R' && text[1] == 'e' && text[2] < 'A') { text += 2; }

  while (is_letter[(unsigned char)*text] == 32) text++;

  while (*text) {
    char *sav = text;
    union {
      unsigned char data[16];
      hash_t hash;
    } md5_h;

    for (;is_letter[(unsigned char)*text] > 32;++text) *text = is_letter[(unsigned char)*text];

    md5 ((unsigned char *) sav, text - sav, md5_h.data);

    P[Pc].hash = md5_h.hash;
    P[Pc].order = order;
    P[Pc].message_id = msg_id;



    ++Pc;

    assert (Pc <= MAX_PAIRS);

    for (;is_letter[(unsigned char)*text] == 32; ++text);
  }
}
