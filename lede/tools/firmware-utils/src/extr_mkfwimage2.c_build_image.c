
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int signature_t ;
typedef int part_t ;
struct TYPE_5__ {scalar_t__ st_size; } ;
struct TYPE_6__ {TYPE_1__ stats; int partition_name; } ;
typedef TYPE_2__ part_data_t ;
typedef int part_crc_t ;
typedef int header_t ;
struct TYPE_7__ {int part_count; int outputfile; TYPE_2__* parts; int version; } ;
typedef int FILE ;


 int ERROR (char*,int,...) ;
 scalar_t__ calloc (int,int) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int free (char*) ;
 int fwrite (char*,int,int,int *) ;
 TYPE_4__ im ;
 int write_header (char*,int ) ;
 int write_part (char*,TYPE_2__*) ;
 int write_signature (char*,int) ;

__attribute__((used)) static int build_image(void)
{
 char* mem;
 char* ptr;
 u_int32_t mem_size;
 FILE* f;
 int i;


 mem_size = sizeof(header_t) + sizeof(signature_t);
 for (i = 0; i < im.part_count; ++i) {
  part_data_t* d = &im.parts[i];
  mem_size += sizeof(part_t) + d->stats.st_size + sizeof(part_crc_t);
 }

 mem = (char*)calloc(mem_size, 1);
 if (mem == ((void*)0)) {
  ERROR("Cannot allocate memory chunk of size '%u'\n", mem_size);
  return -1;
 }


 write_header(mem, im.version);
 ptr = mem + sizeof(header_t);


 for (i = 0; i < im.part_count; ++i) {
  part_data_t* d = &im.parts[i];
  int rc;
  if ((rc = write_part(ptr, d)) != 0) {
   ERROR("ERROR: failed writing part %u '%s'\n", i, d->partition_name);
   return -1;
  }
  ptr += sizeof(part_t) + d->stats.st_size + sizeof(part_crc_t);
 }



 write_signature(mem, mem_size - sizeof(signature_t));


 if ((f = fopen(im.outputfile, "w")) == ((void*)0)) {
  ERROR("Can not create output file: '%s'\n", im.outputfile);
  return -10;
 }

 if (fwrite(mem, mem_size, 1, f) != 1) {
  ERROR("Could not write %d bytes into file: '%s'\n",
    mem_size, im.outputfile);
  return -11;
 }

 free(mem);
 fclose(f);
 return 0;
}
