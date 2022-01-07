
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int item_id; } ;
typedef int FILE ;


 struct item** Items ;
 int assert (int) ;
 int exit (int) ;
 int fclose (int *) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,int,...) ;
 int fsync (int) ;
 int kprintf (char*,char*) ;
 int sort_items () ;
 int tot_items ;

void dump_itemids (char *filename) {
  int i;
  FILE *f = fopen (filename, "w");
  if (f == ((void*)0)) {
    kprintf ("fopen (\"%s\", \"w\") fail. %m\n", filename);
    exit (1);
  }
  sort_items ();
  for (i = 0; i < tot_items; i++) {
    struct item *I = Items[i];
    int t = (int) (I->item_id >> 32);
    if (t) {
      fprintf (f, "%d_%d\n", (int) I->item_id, t);
    } else {
      fprintf (f, "%d\n", (int) I->item_id);
    }
  }
  int fd = fileno (f);
  assert (fd >= 0);
  assert (!fsync (fd));
  assert (!fclose (f));
}
