#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct filesys_directory_node {int inode; int mode; struct filesys_directory_node* head; struct filesys_directory_node* next; int /*<<< orphan*/ * name; struct filesys_directory_node* parent; int /*<<< orphan*/  modification_time; } ;
typedef  enum filesys_lookup_file_type { ____Placeholder_filesys_lookup_file_type } filesys_lookup_file_type ;

/* Variables and functions */
 int MAX_FILENAME_LENGTH ; 
 struct filesys_directory_node* Root ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct filesys_directory_node*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct filesys_directory_node*) ; 
#define  lf_creat 131 
#define  lf_find 130 
#define  lf_rmdir 129 
#define  lf_unlink 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  now ; 
 char* FUNC4 (char const*,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  tot_directory_nodes ; 
 int /*<<< orphan*/  FUNC7 (int,char*,char const*,int) ; 
 void* FUNC8 (int) ; 
 void* FUNC9 (int) ; 

struct filesys_directory_node *FUNC10 (const char *name, enum filesys_lookup_file_type force) {

  FUNC7 (3, "filesys_lookup_file (%s, %d)\n", name, force);

  if (*name != '/') {
    /* isn't absolute path */
    return NULL;
  }
  name++;
  if (Root == NULL) {
    tot_directory_nodes++;
    Root = FUNC9 (sizeof (struct filesys_directory_node));
    Root->inode = -1;
    Root->mode = 0777 | S_IFDIR;
    Root->name = FUNC9 (1);
    Root->modification_time = now;
  }

  if (!*name) {
    return Root;
  }

  struct filesys_directory_node *T = Root;
  while (1) {
    const char *p = FUNC4 (name, '/');
    int l = (p == NULL) ? FUNC6 (name) : (p - name);
    if (l > MAX_FILENAME_LENGTH) {
      return NULL;
    }
    FUNC0 (T != NULL);
    struct filesys_directory_node **w = &T->head;
    int found = 0;
    while (*w != NULL) {
      struct filesys_directory_node *q = *w;
      if (!FUNC3 (q->name, name, l) && !q->name[l]) {
        name += l;
        if (!(*name)) {
          switch (force) {
            case lf_rmdir:
              if (q->inode >= 0 || q->head != NULL || FUNC1 (q->parent, 2)) {
                /* don't rmdir not empty directory */
                return NULL;
              }
              *w = q->next;
              FUNC2 (T);
              return q;
            case lf_unlink:
              if (q->inode < 0 || FUNC1 (q->parent, 2)) {
                return NULL;
              }
              *w = q->next;
              FUNC2 (T);
              return q;
            case lf_find:
              *w = q->next;
              q->next = T->head;
              T->head = q;
              return q;
            case lf_creat:
              return NULL;
          }
        }

        *w = q->next;
        q->next = T->head;
        T->head = q;

        if (q->inode >= 0) {
          /* isn't directory */
          return NULL;
        }
        name++; /* skip '/' */
        T = q;
        found = 1;
        break;
      }
      w = &q->next;
    }
    if (!found) {
      if (force > 0 && !name[l] && T->inode < 0 && !FUNC1 (T, 2)) {
        tot_directory_nodes++;
        struct filesys_directory_node *D = FUNC8 (sizeof (struct filesys_directory_node));
        D->parent = T;
        D->name = FUNC8 (l + 1);
        FUNC5 (D->name, name);
        D->head = NULL;
        D->next = T->head;
        D->inode = -1;
        T->head = D;
        FUNC2 (D);
        return D;
      }
      return NULL;
    }
  }
}