
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_unknown_node {int magic; scalar_t__ nodetype; int totlen; } ;
struct jffs2_raw_dirent {int pino; scalar_t__ ino; scalar_t__ version; int nsize; scalar_t__ name; } ;


 scalar_t__ JFFS2_NODETYPE_DIRENT ;
 scalar_t__ PAD (int ) ;
 unsigned int erasesize ;
 scalar_t__ last_ino ;
 scalar_t__ last_version ;
 int strncmp (char*,char const*,int ) ;
 scalar_t__ target_ino ;

void mtd_parse_jffs2data(const char *buf, const char *dir)
{
 struct jffs2_unknown_node *node = (struct jffs2_unknown_node *) buf;
 unsigned int ofs = 0;

 while (ofs < erasesize) {
  node = (struct jffs2_unknown_node *) (buf + ofs);
  if (node->magic != 0x1985)
   break;

  ofs += PAD(node->totlen);
  if (node->nodetype == JFFS2_NODETYPE_DIRENT) {
   struct jffs2_raw_dirent *de = (struct jffs2_raw_dirent *) node;


   if (*dir && (de->pino == 1) && !strncmp((char *) de->name, dir, de->nsize))
    target_ino = de->ino;


   if (last_ino < de->ino)
    last_ino = de->ino;
   if (last_version < de->version)
    last_version = de->version;
  }
 }
}
