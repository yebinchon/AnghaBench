
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int st_size; int st_mode; } ;
struct TYPE_5__ {TYPE_1__ st; int filename; } ;
typedef TYPE_2__ file_t ;


 int PATH_MAX ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 unsigned char* read_whole_file (char*,int) ;
 int readlink (char*,char*,int) ;
 int vkprintf (int,char*,int ) ;
 unsigned char* zmalloc (int) ;

int get_file_content (char *dir, file_t *x, unsigned char **a, int *L) {
  *a = ((void*)0);
  *L = 0;
  if (S_ISLNK (x->st.st_mode)) {
    vkprintf (3, "link: %s\n", x->filename);
    *a = zmalloc (PATH_MAX);
    *L = readlink (dir, (char *) *a, PATH_MAX);
    if (*L < 0 || *L >= PATH_MAX - 1) {
      return -1;
    }
    (*a)[*L] = 0;
    (*L)++;
    return 0;
  }
  if (S_ISDIR (x->st.st_mode)) {
    vkprintf (3, "dir: %s\n", x->filename);
    *L = 0;
    return 0;
  }
  vkprintf (3, "file: %s\n", x->filename);
  *L = x->st.st_size;
  *a = read_whole_file (dir, *L);
  if (*a == ((void*)0)) {
    return -2;
  }
  return 0;
}
