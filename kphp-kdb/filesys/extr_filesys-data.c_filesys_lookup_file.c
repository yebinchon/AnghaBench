
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_directory_node {int inode; int mode; struct filesys_directory_node* head; struct filesys_directory_node* next; int * name; struct filesys_directory_node* parent; int modification_time; } ;
typedef enum filesys_lookup_file_type { ____Placeholder_filesys_lookup_file_type } filesys_lookup_file_type ;


 int MAX_FILENAME_LENGTH ;
 struct filesys_directory_node* Root ;
 int S_IFDIR ;
 int assert (int ) ;
 scalar_t__ do_check_perm (struct filesys_directory_node*,int) ;
 int filesys_update_modification_time (struct filesys_directory_node*) ;




 int memcmp (int *,char const*,int) ;
 int now ;
 char* strchr (char const*,char) ;
 int strcpy (int *,char const*) ;
 int strlen (char const*) ;
 int tot_directory_nodes ;
 int vkprintf (int,char*,char const*,int) ;
 void* zmalloc (int) ;
 void* zmalloc0 (int) ;

struct filesys_directory_node *filesys_lookup_file (const char *name, enum filesys_lookup_file_type force) {

  vkprintf (3, "filesys_lookup_file (%s, %d)\n", name, force);

  if (*name != '/') {

    return ((void*)0);
  }
  name++;
  if (Root == ((void*)0)) {
    tot_directory_nodes++;
    Root = zmalloc0 (sizeof (struct filesys_directory_node));
    Root->inode = -1;
    Root->mode = 0777 | S_IFDIR;
    Root->name = zmalloc0 (1);
    Root->modification_time = now;
  }

  if (!*name) {
    return Root;
  }

  struct filesys_directory_node *T = Root;
  while (1) {
    const char *p = strchr (name, '/');
    int l = (p == ((void*)0)) ? strlen (name) : (p - name);
    if (l > MAX_FILENAME_LENGTH) {
      return ((void*)0);
    }
    assert (T != ((void*)0));
    struct filesys_directory_node **w = &T->head;
    int found = 0;
    while (*w != ((void*)0)) {
      struct filesys_directory_node *q = *w;
      if (!memcmp (q->name, name, l) && !q->name[l]) {
        name += l;
        if (!(*name)) {
          switch (force) {
            case 129:
              if (q->inode >= 0 || q->head != ((void*)0) || do_check_perm (q->parent, 2)) {

                return ((void*)0);
              }
              *w = q->next;
              filesys_update_modification_time (T);
              return q;
            case 128:
              if (q->inode < 0 || do_check_perm (q->parent, 2)) {
                return ((void*)0);
              }
              *w = q->next;
              filesys_update_modification_time (T);
              return q;
            case 130:
              *w = q->next;
              q->next = T->head;
              T->head = q;
              return q;
            case 131:
              return ((void*)0);
          }
        }

        *w = q->next;
        q->next = T->head;
        T->head = q;

        if (q->inode >= 0) {

          return ((void*)0);
        }
        name++;
        T = q;
        found = 1;
        break;
      }
      w = &q->next;
    }
    if (!found) {
      if (force > 0 && !name[l] && T->inode < 0 && !do_check_perm (T, 2)) {
        tot_directory_nodes++;
        struct filesys_directory_node *D = zmalloc (sizeof (struct filesys_directory_node));
        D->parent = T;
        D->name = zmalloc (l + 1);
        strcpy (D->name, name);
        D->head = ((void*)0);
        D->next = T->head;
        D->inode = -1;
        T->head = D;
        filesys_update_modification_time (D);
        return D;
      }
      return ((void*)0);
    }
  }
}
