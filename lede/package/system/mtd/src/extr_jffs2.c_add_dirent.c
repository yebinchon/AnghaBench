
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_unknown_node {int dummy; } ;
struct jffs2_raw_dirent {char type; int ino; int pino; scalar_t__ nsize; int name; void* node_crc; scalar_t__ mctime; scalar_t__ version; void* hdr_crc; scalar_t__ totlen; void* name_crc; int nodetype; int magic; } ;


 int JFFS2_MAGIC_BITMASK ;
 int JFFS2_NODETYPE_DIRENT ;
 scalar_t__ buf ;
 void* crc32 (int ,void*,int) ;
 scalar_t__ erasesize ;
 int last_ino ;
 int last_version ;
 int memcpy (int ,char const*,scalar_t__) ;
 int memset (scalar_t__,int ,int) ;
 scalar_t__ ofs ;
 int pad (int) ;
 int prep_eraseblock () ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int add_dirent(const char *name, const char type, int parent)
{
 struct jffs2_raw_dirent *de;

 if (ofs - erasesize < sizeof(struct jffs2_raw_dirent) + strlen(name))
  pad(erasesize);

 prep_eraseblock();
 last_ino++;
 memset(buf + ofs, 0, sizeof(struct jffs2_raw_dirent));
 de = (struct jffs2_raw_dirent *) (buf + ofs);

 de->magic = JFFS2_MAGIC_BITMASK;
 de->nodetype = JFFS2_NODETYPE_DIRENT;
 de->type = type;
 de->name_crc = crc32(0, name, strlen(name));
 de->ino = last_ino++;
 de->pino = parent;
 de->totlen = sizeof(*de) + strlen(name);
 de->hdr_crc = crc32(0, (void *) de, sizeof(struct jffs2_unknown_node) - 4);
 de->version = last_version++;
 de->mctime = 0;
 de->nsize = strlen(name);
 de->node_crc = crc32(0, (void *) de, sizeof(*de) - 8);
 memcpy(de->name, name, strlen(name));

 ofs += sizeof(struct jffs2_raw_dirent) + de->nsize;
 pad(4);

 return de->ino;
}
