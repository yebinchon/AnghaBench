
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trie {void* value; scalar_t__ len; int contents; } ;


 int memcpy (int ,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 struct trie* xcalloc (int,int) ;
 int xmalloc (scalar_t__) ;

__attribute__((used)) static struct trie *make_trie_node(const char *key, void *value)
{
 struct trie *new_node = xcalloc(1, sizeof(*new_node));
 new_node->len = strlen(key);
 if (new_node->len) {
  new_node->contents = xmalloc(new_node->len);
  memcpy(new_node->contents, key, new_node->len);
 }
 new_node->value = value;
 return new_node;
}
