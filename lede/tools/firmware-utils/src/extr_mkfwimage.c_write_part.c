
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {void* entryaddr; void* memaddr; void* baseaddr; void* part_size; void* data_size; void* index; int name; int magic; } ;
typedef TYPE_2__ part_t ;
struct TYPE_6__ {int st_size; } ;
struct TYPE_8__ {TYPE_1__ stats; int partition_entryaddr; int partition_memaddr; int partition_baseaddr; int partition_length; int partition_index; int partition_name; int filename; } ;
typedef TYPE_3__ part_data_t ;
struct TYPE_9__ {long pad; void* crc; } ;
typedef TYPE_4__ part_crc_t ;


 int ERROR (char*,int ) ;
 int MAGIC_LENGTH ;
 int MAGIC_PART ;
 char* MAP_FAILED ;
 int MAP_SHARED ;
 int O_RDONLY ;
 int PROT_READ ;
 int close (int) ;
 int crc32 (long,void*,int ) ;
 void* htonl (int ) ;
 int memcpy (void*,char*,int ) ;
 int memset (int ,int ,int) ;
 scalar_t__ mmap (int ,int ,int ,int ,int,int ) ;
 int munmap (char*,int ) ;
 int open (int ,int ) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static int write_part(void* mem, part_data_t* d)
{
 char* addr;
 int fd;
 part_t* p = mem;
 part_crc_t* crc = mem + sizeof(part_t) + d->stats.st_size;

 fd = open(d->filename, O_RDONLY);
 if (fd < 0)
 {
  ERROR("Failed opening file '%s'\n", d->filename);
  return -1;
 }

 if ((addr=(char*)mmap(0, d->stats.st_size, PROT_READ, MAP_SHARED, fd, 0)) == MAP_FAILED)
 {
  ERROR("Failed mmaping memory for file '%s'\n", d->filename);
  close(fd);
  return -2;
 }

 memcpy(mem + sizeof(part_t), addr, d->stats.st_size);
 munmap(addr, d->stats.st_size);

 memset(p->name, 0, sizeof(p->name));
 strncpy(p->magic, MAGIC_PART, MAGIC_LENGTH);
 strncpy(p->name, d->partition_name, sizeof(p->name));
 p->index = htonl(d->partition_index);
 p->data_size = htonl(d->stats.st_size);
 p->part_size = htonl(d->partition_length);
 p->baseaddr = htonl(d->partition_baseaddr);
 p->memaddr = htonl(d->partition_memaddr);
 p->entryaddr = htonl(d->partition_entryaddr);

 crc->crc = htonl(crc32(0L, mem, d->stats.st_size + sizeof(part_t)));
 crc->pad = 0L;

 return 0;
}
