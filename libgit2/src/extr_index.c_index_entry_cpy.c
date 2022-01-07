
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* path; } ;
typedef TYPE_1__ git_index_entry ;


 int memcpy (TYPE_1__*,TYPE_1__ const*,int) ;

__attribute__((used)) static void index_entry_cpy(
 git_index_entry *tgt,
 const git_index_entry *src)
{
 const char *tgt_path = tgt->path;
 memcpy(tgt, src, sizeof(*tgt));
 tgt->path = tgt_path;
}
