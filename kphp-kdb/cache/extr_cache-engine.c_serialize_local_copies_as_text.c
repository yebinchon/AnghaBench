
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ disk_id; scalar_t__ server_id; scalar_t__ node_id; } ;
union cache_packed_local_copy_location {TYPE_1__ p; } ;
struct cache_local_copy {char* location; int cached_at; } ;


 int VALUE_BUFF_SIZE ;
 int cache_local_copy_get_flags (struct cache_local_copy*,union cache_packed_local_copy_location*) ;
 scalar_t__ snprintf (scalar_t__,int,char*,char*,int,int,int,int,int) ;
 scalar_t__ value_buff ;

__attribute__((used)) static int serialize_local_copies_as_text (struct cache_local_copy *LC, int n) {
  int i, o = 0;
  for (i = 0; i < n; i++) {
    union cache_packed_local_copy_location u;
    int f = cache_local_copy_get_flags (LC + i, &u);
    o += snprintf (value_buff + o, VALUE_BUFF_SIZE - o, "%s\t%d\t%d\t%d\t%d\t%d\n",
        LC[i].location,
        (int) u.p.node_id, (int) u.p.server_id, (int) u.p.disk_id,
        f, LC[i].cached_at);
    if (o >= VALUE_BUFF_SIZE) {
      return -1;
    }
  }
  return o;
}
