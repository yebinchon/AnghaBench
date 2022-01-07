
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct notes_tree {struct non_note* prev_non_note; struct non_note* first_non_note; } ;
struct TYPE_3__ {int hash; } ;
struct non_note {char* path; unsigned int mode; struct non_note* next; TYPE_1__ oid; } ;


 int assert (int) ;
 int free (struct non_note*) ;
 int hashcpy (int ,unsigned char const*) ;
 scalar_t__ non_note_cmp (struct non_note*,struct non_note*) ;
 int oidcpy (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void add_non_note(struct notes_tree *t, char *path,
  unsigned int mode, const unsigned char *sha1)
{
 struct non_note *p = t->prev_non_note, *n;
 n = (struct non_note *) xmalloc(sizeof(struct non_note));
 n->next = ((void*)0);
 n->path = path;
 n->mode = mode;
 hashcpy(n->oid.hash, sha1);
 t->prev_non_note = n;

 if (!t->first_non_note) {
  t->first_non_note = n;
  return;
 }

 if (non_note_cmp(p, n) < 0)
  ;
 else if (non_note_cmp(t->first_non_note, n) <= 0)
  p = t->first_non_note;
 else {

  n->next = t->first_non_note;
  t->first_non_note = n;
  return;
 }


 while (p->next && non_note_cmp(p->next, n) <= 0)
  p = p->next;

 if (non_note_cmp(p, n) == 0) {
  assert(strcmp(p->path, n->path) == 0);
  p->mode = n->mode;
  oidcpy(&p->oid, &n->oid);
  free(n);
  t->prev_non_note = p;
  return;
 }


 n->next = p->next;
 p->next = n;
}
