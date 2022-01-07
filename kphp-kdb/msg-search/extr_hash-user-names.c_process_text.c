
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long user_id; int hash; } ;
typedef TYPE_1__ userpair_t ;
typedef int hash_t ;
typedef int Tmp ;


 int* is_letter ;
 int md5 (unsigned char*,int,unsigned char*) ;
 int tot_Pc ;
 int writeout (TYPE_1__*,int) ;

void process_text (char *text, long user_id) {

  while (is_letter[(unsigned char)*text] == 32) text++;

  while (*text) {
    char *sav = text;
    union {
      unsigned char data[16];
      hash_t hash;
    } md5_h;
    static userpair_t Tmp;

    for (;is_letter[(unsigned char)*text] > 32;++text) *text = is_letter[(unsigned char)*text];

    md5 ((unsigned char *) sav, text - sav, md5_h.data);

    Tmp.hash = md5_h.hash;
    Tmp.user_id = user_id;



    writeout (&Tmp, sizeof(Tmp));
    tot_Pc++;

    for (;is_letter[(unsigned char)*text] == 32; ++text);
  }
}
