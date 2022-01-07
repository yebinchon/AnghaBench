
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int untracked; int resolve_undo; int cache_tree; } ;


 int CACHE_EXT (char const*) ;







 int _ (char*) ;
 int cache_tree_read (char const*,unsigned long) ;
 int error (int ,char const*) ;
 int fprintf_ln (int ,int ,char const*) ;
 int read_fsmonitor_extension (struct index_state*,char const*,unsigned long) ;
 int read_link_extension (struct index_state*,char const*,unsigned long) ;
 int read_untracked_extension (char const*,unsigned long) ;
 int resolve_undo_read (char const*,unsigned long) ;
 int stderr ;

__attribute__((used)) static int read_index_extension(struct index_state *istate,
    const char *ext, const char *data, unsigned long sz)
{
 switch (CACHE_EXT(ext)) {
 case 129:
  istate->cache_tree = cache_tree_read(data, sz);
  break;
 case 130:
  istate->resolve_undo = resolve_undo_read(data, sz);
  break;
 case 131:
  if (read_link_extension(istate, data, sz))
   return -1;
  break;
 case 128:
  istate->untracked = read_untracked_extension(data, sz);
  break;
 case 133:
  read_fsmonitor_extension(istate, data, sz);
  break;
 case 134:
 case 132:

  break;
 default:
  if (*ext < 'A' || 'Z' < *ext)
   return error(_("index uses %.4s extension, which we do not understand"),
         ext);
  fprintf_ln(stderr, _("ignoring %.4s extension"), ext);
  break;
 }
 return 0;
}
