
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_token {char* text; } ;


 int fprintf (int ,char*,char*) ;
 scalar_t__* reserved_words_polymorhic ;
 int stderr ;
 int strcmp (scalar_t__,char*) ;
 int verbosity ;

__attribute__((used)) static int tl_token_is_variable_type (struct tl_token *T) {
  if (verbosity >= 4) {
    fprintf (stderr, "tl_token_is_variable_type: %s\n", T->text);
  }

  int i;
  for (i = 0; reserved_words_polymorhic[i]; i++) {
    if (!strcmp (reserved_words_polymorhic[i], T->text)) {
      return i + 1;
    }
  }
  return 0;
}
