
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct facility_def {int* bits; char* name; } ;


 int EXIT_FAILURE ;
 unsigned long long* calloc (int,int) ;
 int exit (int ) ;
 int free (unsigned long long*) ;
 int memset (unsigned long long*,int ,unsigned int) ;
 int printf (char*,...) ;
 unsigned long long* realloc (unsigned long long*,unsigned int) ;

__attribute__((used)) static void print_facility_list(struct facility_def *def)
{
 unsigned int high, bit, dword, i;
 unsigned long long *array;

 array = calloc(1, 8);
 if (!array)
  exit(EXIT_FAILURE);
 high = 0;
 for (i = 0; def->bits[i] != -1; i++) {
  bit = 63 - (def->bits[i] & 63);
  dword = def->bits[i] / 64;
  if (dword > high) {
   array = realloc(array, (dword + 1) * 8);
   if (!array)
    exit(EXIT_FAILURE);
   memset(array + high + 1, 0, (dword - high) * 8);
   high = dword;
  }
  array[dword] |= 1ULL << bit;
 }
 printf("#define %s ", def->name);
 for (i = 0; i <= high; i++)
  printf("_AC(0x%016llx,UL)%c", array[i], i < high ? ',' : '\n');
 free(array);
}
