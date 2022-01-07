
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ngood; int nbad; } ;
struct TYPE_5__ {TYPE_2__ b; } ;
typedef TYPE_1__ user ;




 int bayes_add_word (TYPE_2__*,scalar_t__,int,int) ;
 scalar_t__ binlog_readed ;
 TYPE_1__* conv_uid (int) ;
 int fprintf (int ,char*,int,char*) ;
 int get_words (char*) ;
 TYPE_2__ global_bayes ;
 int sscanf (char*,char*,int*) ;
 int stderr ;
 char* strstr (char*,char*) ;
 int teach_messages ;
 int verbosity ;
 scalar_t__* words ;

int bayes_set (char *text, int text_len, int type) {
  if (verbosity > 1 && binlog_readed) {
    fprintf (stderr, "bayes_set %d : %s\n", type, text);
  }

  int i;

  int out = 0;
  char *out_s = strstr (text, "out ");
  if (out_s != ((void*)0)) {
    sscanf (out_s + 5, "%d", &out);
  }

  int uid = 0;
  char *uid_s = strstr (text, "uid ");
  if (uid_s != ((void*)0)) {
    sscanf (uid_s + 5, "%d", &uid);
  }

  user *u = conv_uid (uid);

  if (!out || u != ((void*)0)) {
    teach_messages++;
    get_words (text);
  } else {
    return 0;
  }

  int add_ham = 0, add_spam = 0;
  switch (type) {
    case 129:
      add_ham = 1;
      break;
    case 128:
      add_spam = 1;
      break;
    case 129 + 2:
      add_ham = -1;
      break;
    case 128 + 2:
      add_spam = -1;
      break;
    case 129 + 4:
      add_ham = 1;
      add_spam = -1;
      break;
    case 128 + 4:
      add_ham = -1;
      add_spam = 1;
      break;
  }





  if (!out) {
    for (i = 0; words[i]; i++) {
      bayes_add_word (&global_bayes, words[i], add_ham, add_spam);
    }

    global_bayes.ngood += add_ham;
    global_bayes.nbad += add_spam;
  }

  if (u != ((void*)0)) {
    for (i = 0; words[i]; i++) {
      bayes_add_word (&u->b, words[i], add_ham, add_spam);
    }

    u->b.ngood += add_ham;
    u->b.nbad += add_spam;
  }
  return 1;
}
