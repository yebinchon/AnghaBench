
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa_open_data {int tmp_size; scalar_t__ tmp_length; struct ipv4_range* tmp_base; } ;
struct ipv4_range {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int fprintf (int ,char*) ;
 scalar_t__ malloc (int) ;
 int stderr ;

__attribute__((used)) static int __touch_tmp_base(struct sa_open_data *od, gfp_t gfp)
{
 if (!od->tmp_base) {




  if (od->tmp_size < 100)
   od->tmp_size = 100;
  od->tmp_base = (struct ipv4_range *)malloc(
   sizeof(struct ipv4_range) * od->tmp_size );
  if (!od->tmp_base) {
   fprintf(stderr,
    "salist: cannot allocate the temporary list for enlarging it.\n");
   return -ENOMEM;
  }
  od->tmp_length = 0;
 }
 return 0;
}
