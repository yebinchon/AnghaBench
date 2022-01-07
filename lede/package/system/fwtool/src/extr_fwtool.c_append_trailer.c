
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwimage_trailer {int size; } ;
typedef int FILE ;


 int cpu_to_be32 (int ) ;
 int fwrite (struct fwimage_trailer*,int,int,int *) ;
 int trailer_update_crc (struct fwimage_trailer*,struct fwimage_trailer*,int) ;

__attribute__((used)) static void
append_trailer(FILE *out, struct fwimage_trailer *tr)
{
 tr->size = cpu_to_be32(tr->size);
 fwrite(tr, sizeof(*tr), 1, out);
 trailer_update_crc(tr, tr, sizeof(*tr));
}
