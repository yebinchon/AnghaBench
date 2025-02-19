
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int dyn_mark_t ;
struct TYPE_5__ {int name; int spell_checker; } ;
struct TYPE_4__ {int offset; int len; } ;
typedef TYPE_1__ AspellToken ;
typedef int AspellDocumentChecker ;
typedef int AspellCanHaveError ;


 TYPE_3__** SC ;
 TYPE_1__ aspell_document_checker_next_misspelling (int *) ;
 int aspell_document_checker_process (int *,char*,int) ;
 scalar_t__ aspell_error (int *) ;
 int aspell_error_message (int *) ;
 int delete_aspell_document_checker (int *) ;
 int dyn_mark (int ) ;
 int dyn_release (int ) ;
 int memcpy (char*,char*,int ) ;
 int * new_aspell_document_checker (int ) ;
 int spellers ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int * to_aspell_document_checker (int *) ;
 int vkprintf (int,char*,...) ;
 char* zmalloc (int) ;

int spell_check2 (const char *text, int res[3]) {
  int l = strlen (text);
  res[0] = res[1] = res[2] = 0;
  dyn_mark_t m;
  dyn_mark (m);
  char *a = zmalloc (l + 3), *b = zmalloc (l + 3);
  strcpy (a, text);
  int i, words = 0;
  for (i = 0; i < spellers; i++) {
    words = 0;
    vkprintf (3, "%s (%s)\n", a, SC[i]->name);
    char *p = b;
    AspellCanHaveError *ret = new_aspell_document_checker (SC[i]->spell_checker);
    if (aspell_error (ret) != 0) {
      vkprintf (1, "%s\n",aspell_error_message (ret));
      return -1;
    }
    AspellDocumentChecker *checker = to_aspell_document_checker (ret);
    aspell_document_checker_process (checker, a, -1);
    while (1) {
      AspellToken token = aspell_document_checker_next_misspelling (checker);
      if (!token.len) {
        break;
      }
      vkprintf (3, "%.*s (%s)\n", token.len, a + token.offset, SC[i]->name);
      memcpy (p, a + token.offset, token.len);
      p += token.len;
      *p++ = ' ';
      words++;
    }
    vkprintf (3, "words = %d\n", words);
    *p = 0;
    p = a; a = b; b = p;
    delete_aspell_document_checker (checker);
    if (!words) {
      break;
    }
  }
  dyn_release (m);
  res[0] = l;
  res[1] = words;
  return 0;
}
