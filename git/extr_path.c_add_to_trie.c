
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trie {int len; char const* contents; int * value; struct trie** children; } ;


 void* make_trie_node (char const*,void*) ;
 int memcpy (struct trie**,struct trie**,int) ;
 int memset (struct trie**,int ,int) ;
 struct trie* xmalloc (int) ;
 char const* xstrndup (char const*,int) ;

__attribute__((used)) static void *add_to_trie(struct trie *root, const char *key, void *value)
{
 struct trie *child;
 void *old;
 int i;

 if (!*key) {

  old = root->value;
  root->value = value;
  return old;
 }

 for (i = 0; i < root->len; i++) {
  if (root->contents[i] == key[i])
   continue;





  child = xmalloc(sizeof(*child));
  memcpy(child->children, root->children, sizeof(root->children));

  child->len = root->len - i - 1;
  if (child->len) {
   child->contents = xstrndup(root->contents + i + 1,
         child->len);
  }
  child->value = root->value;
  root->value = ((void*)0);
  root->len = i;

  memset(root->children, 0, sizeof(root->children));
  root->children[(unsigned char)root->contents[i]] = child;


  root->children[(unsigned char)key[i]] =
   make_trie_node(key + i + 1, value);
  return ((void*)0);
 }


 if (key[i]) {
  child = root->children[(unsigned char)key[root->len]];
  if (child) {
   return add_to_trie(child, key + root->len + 1, value);
  } else {
   child = make_trie_node(key + root->len + 1, value);
   root->children[(unsigned char)key[root->len]] = child;
   return ((void*)0);
  }
 }

 old = root->value;
 root->value = value;
 return old;
}
