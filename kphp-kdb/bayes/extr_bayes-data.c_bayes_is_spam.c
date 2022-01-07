
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* text; } ;
typedef TYPE_1__ message ;


 double BAYES_SPAM_LIMIT ;
 double bayes_is_spam_prob (TYPE_1__*,int) ;
 int debugp (char*,...) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ msg_verify (TYPE_1__*,int) ;
 int stderr ;
 int verbosity ;

int bayes_is_spam (message *msg, int random_tag) {
  if (msg_verify (msg, random_tag) < 0) {
    return -1;
  }

  if (verbosity > 2) {
    fprintf (stderr, "bayes_is_spam\n%s\n", msg->text);
  }
  debugp ("CHECK: <%s>\n", msg->text);

  double result = bayes_is_spam_prob (msg, random_tag);

  debugp ("RES: %.9lf\n", result);
  debugp ("%s\n", result > BAYES_SPAM_LIMIT ? "spam" : "ham");

  if (result < -1.99999) {
    return -2;
  }

  return result > BAYES_SPAM_LIMIT;
}
