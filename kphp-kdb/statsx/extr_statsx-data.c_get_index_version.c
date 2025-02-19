
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STATSX_INDEX_MAGIC_OLD ;
 int STATSX_INDEX_MAGIC_V1 ;
 int STATSX_INDEX_MAGIC_V2 ;
 int STATSX_INDEX_MAGIC_V3 ;
 int STATSX_INDEX_MAGIC_V4 ;
 int custom_version_names ;
 int index_version ;
 int vkprintf (int ,char*,...) ;

int get_index_version (int magic) {
  if (magic == STATSX_INDEX_MAGIC_OLD) {
    if (magic - STATSX_INDEX_MAGIC_OLD != custom_version_names) {
      vkprintf (0, "index file key [-x] is not as in index\n");
      return -1;
    }
    return index_version = 0;
  }
  if (magic == STATSX_INDEX_MAGIC_V1 || magic == STATSX_INDEX_MAGIC_V1 + 1) {
    if (magic - STATSX_INDEX_MAGIC_V1 != custom_version_names) {
      vkprintf (0, "index file key [-x] is not as in index\n");
      return -1;
    }
    return index_version = 1;
  }
  if (magic == STATSX_INDEX_MAGIC_V2 || magic == STATSX_INDEX_MAGIC_V2 + 1) {
    if (magic - STATSX_INDEX_MAGIC_V2 != custom_version_names) {
      vkprintf (0, "index file key [-x] is not as in index\n");
      return -1;
    }
    return index_version = 2;
  }
  if (magic == STATSX_INDEX_MAGIC_V3 || magic == STATSX_INDEX_MAGIC_V3 + 1) {
    if (magic - STATSX_INDEX_MAGIC_V3 != custom_version_names) {
      vkprintf (0, "index file key [-x] is not as in index\n");
      return -1;
    }
    return index_version = 3;
  }
  if (magic == STATSX_INDEX_MAGIC_V4 || magic == STATSX_INDEX_MAGIC_V4 + 1) {
    if (magic - STATSX_INDEX_MAGIC_V4 != custom_version_names) {
      vkprintf (0, "index file key [-x] is not as in index\n");
      return -1;
    }
    return index_version = 4;
  }
  vkprintf (0, "Unknown index magic %x\n", magic);
  return -1;
}
