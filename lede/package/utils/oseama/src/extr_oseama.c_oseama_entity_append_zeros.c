
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef size_t ssize_t ;
typedef int FILE ;


 size_t EIO ;
 size_t ENOMEM ;
 int fprintf (int ,char*,size_t,int ) ;
 size_t fwrite (int *,int,size_t,int *) ;
 int * malloc (size_t) ;
 int memset (int *,int ,size_t) ;
 int seama_path ;
 int stderr ;

__attribute__((used)) static ssize_t oseama_entity_append_zeros(FILE *seama, size_t length) {
 uint8_t *buf;

 buf = malloc(length);
 if (!buf)
  return -ENOMEM;
 memset(buf, 0, length);

 if (fwrite(buf, 1, length, seama) != length) {
  fprintf(stderr, "Couldn't write %zu B to %s\n", length, seama_path);
  return -EIO;
 }

 return length;
}
