
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *****) ;
 int ***** info ;
 int num_pack ;

__attribute__((used)) static void free_pack_info(void)
{
 int i;
 for (i = 0; i < num_pack; i++)
  free(info[i]);
 free(info);
}
