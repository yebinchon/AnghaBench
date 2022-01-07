
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* text; scalar_t__ len; } ;
typedef TYPE_1__ message ;


 scalar_t__ HAM ;
 int do_bayes_set (char*,scalar_t__,scalar_t__) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ msg_verify (TYPE_1__*,int) ;
 int stderr ;
 int verbosity ;

int do_bayes_reset_ham (message *msg, int random_tag) {
  if (msg_verify (msg, random_tag) < 0) {
    return -1;
  }

  if (verbosity > 2) {
    fprintf (stderr, "bayes_set_ham\n%s\n", msg->text);
  }

  return do_bayes_set (msg->text, msg->len - 1, HAM + 4);
}
