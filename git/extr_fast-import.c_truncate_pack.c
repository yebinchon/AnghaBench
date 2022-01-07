
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashfile_checkpoint {int offset; } ;


 int die_errno (char*) ;
 scalar_t__ hashfile_truncate (int ,struct hashfile_checkpoint*) ;
 int pack_file ;
 int pack_size ;

__attribute__((used)) static void truncate_pack(struct hashfile_checkpoint *checkpoint)
{
 if (hashfile_truncate(pack_file, checkpoint))
  die_errno("cannot truncate pack to skip duplicate");
 pack_size = checkpoint->offset;
}
