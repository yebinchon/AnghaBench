
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* right; struct TYPE_5__* left; int x; } ;
typedef TYPE_1__ privacy_t ;


 int assert (int) ;
 int compute_privacy_size (TYPE_1__*) ;
 int fprintf (int ,char*) ;
 int memcpy (int *,char*,int) ;
 int privacy_nodes ;
 int readadv (int) ;
 char* readin (int) ;
 int stderr ;
 int tot_privacy_len ;
 TYPE_1__* zmalloc (int) ;

__attribute__((used)) static privacy_t *read_privacy (void) {
  char *ptr = readin (1);
  if (!ptr) {
    fprintf (stderr, "Unexpected end of file in read_privacy\n");
    return 0;
  }
  char c = ptr[0];
  readadv (1);
  assert (c == 2 || c == 3);
  if (c == 2) {
    return 0;
  }
  ptr = readin (16);
  if (!ptr) {
    fprintf (stderr, "Unexpected end of file in read_privacy\n");
    return 0;
  }
  int l = compute_privacy_size ((privacy_t *)(ptr - 2 * sizeof (privacy_t *)));
  privacy_t *T = zmalloc (l);
  ptr = readin (l - 2 * sizeof (privacy_t *));
  if (!ptr) {
    fprintf (stderr, "Unexpected end of file in read_privacy\n");
  }
  memcpy (&T->x, ptr, l - 2 * sizeof (privacy_t *));
  readadv (l - 2 * sizeof (privacy_t *));
  T->left = read_privacy ();
  T->right = read_privacy ();
  assert (l == compute_privacy_size (T));
  tot_privacy_len += l;
  privacy_nodes++;
  return T;
}
