
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct forth_output {int l; scalar_t__ s; } ;


 int memcpy (scalar_t__,void*,size_t) ;

__attribute__((used)) static int append_blob (struct forth_output *O, void *blob, size_t size) {
  if (O == ((void*)0)) { return -1; }
  int o = (sizeof (O->s) - O->l);
  if (o < size) {
    return -1;
  }
  memcpy (O->s + O->l, blob, size);
  O->l += size;
  return 0;
}
