
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct locfile {int length; int nlines; int refct; int* linemap; void* data; int fname; int * jq; } ;
typedef int jq_state ;


 void* jv_mem_alloc (int) ;
 int* jv_mem_calloc (int,int) ;
 int jv_string (char const*) ;
 int memcpy (char*,char const*,int) ;

struct locfile* locfile_init(jq_state *jq, const char *fname, const char* data, int length) {
  struct locfile* l = jv_mem_alloc(sizeof(struct locfile));
  l->jq = jq;
  l->fname = jv_string(fname);
  l->data = jv_mem_alloc(length);
  memcpy((char*)l->data,data,length);
  l->length = length;
  l->nlines = 1;
  l->refct = 1;
  for (int i=0; i<length; i++) {
    if (data[i] == '\n') l->nlines++;
  }
  l->linemap = jv_mem_calloc(sizeof(int), (l->nlines + 1));
  l->linemap[0] = 0;
  int line = 1;
  for (int i=0; i<length; i++) {
    if (data[i] == '\n') {
      l->linemap[line] = i+1;
      line++;
    }
  }
  l->linemap[l->nlines] = length+1;
  return l;
}
