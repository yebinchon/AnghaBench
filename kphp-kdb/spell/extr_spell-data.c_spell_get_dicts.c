
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* code; char* jargon; int ** stat; } ;


 TYPE_1__** SC ;
 int snprintf (char*,int,char*,char*,char*,int ,int ,int ,int ) ;
 int spellers ;

int spell_get_dicts (char *buf, int len) {
  int i;
  char *p = buf;
  char *e = buf + len - 2;
  for (i = 0; i < spellers; i++) {
    int o = e - p;
    if (o < 5) {
      break ;
    }
    int l = snprintf (p, o, "%s\t%s\t%lld\t%lld\t%lld\t%lld\n", SC[i]->code, SC[i]->jargon, SC[i]->stat[0][0], SC[i]->stat[0][1], SC[i]->stat[1][0], SC[i]->stat[1][1]);
    if (l < 0 || l >= o) {
      *p = 0;
      break;
    }
    p += l;
  }
  return p - buf;
}
