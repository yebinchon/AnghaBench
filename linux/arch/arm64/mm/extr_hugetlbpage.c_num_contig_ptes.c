
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONT_PMDS ;

 int CONT_PTES ;

 size_t PAGE_SIZE ;



__attribute__((used)) static inline int num_contig_ptes(unsigned long size, size_t *pgsize)
{
 int contig_ptes = 0;

 *pgsize = size;

 switch (size) {



 case 129:
  contig_ptes = 1;
  break;
 case 131:
  *pgsize = 129;
  contig_ptes = CONT_PMDS;
  break;
 case 130:
  *pgsize = PAGE_SIZE;
  contig_ptes = CONT_PTES;
  break;
 }

 return contig_ptes;
}
