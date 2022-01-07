
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trie_arr_node ;


 int MAX_BUFF ;
 int aho_black_list ;
 int aho_black_list_size ;
 int assert (int) ;
 int black_list ;
 int black_list_set_string (char*,int ) ;
 char* buff ;
 int dl_malloc (int ) ;
 int * fd ;
 int fprintf (int ,char*,...) ;
 int memcpy (int ,char*,int ) ;
 int read (int ,char*,int) ;
 int stderr ;
 int trie_arr_aho (int *) ;
 int trie_encode (int ,char*,int ) ;
 int verbosity ;

void load_black_list (int size) {
  assert (size + 1 < MAX_BUFF);

  int r = read (fd[0], buff, size);
  if (verbosity > 1) {
    fprintf (stderr, "black list read %d\n", size);
  }
  if (r != size) {
    fprintf (stderr, "error reading header from index file: read %d bytes instead of %d at position 0: %m\n", r, size);
  }
  assert (r == size);

  buff[size] = 0;

  if (verbosity > 2) {
    fprintf (stderr, "ADD %s\n", buff);
  }
  black_list_set_string (buff, 0);

  aho_black_list_size = trie_encode (black_list, buff, 0);
  trie_arr_aho ((trie_arr_node *)buff);
  aho_black_list = dl_malloc (aho_black_list_size);
  memcpy (aho_black_list, buff, aho_black_list_size);
}
