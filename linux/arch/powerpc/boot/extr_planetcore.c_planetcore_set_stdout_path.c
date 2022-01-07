
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_PROP_LEN ;
 int PLANETCORE_KEY_SERIAL_PORT ;
 void* create_node (int *,char*) ;
 void* find_node_by_prop_value_str (int *,char*,char const*) ;
 void* finddevice (char*) ;
 char* get_path (void*,int ,int ) ;
 char* planetcore_get_key (char const*,int ) ;
 int prop_buf ;
 int setprop_str (void*,char*,char*) ;

void planetcore_set_stdout_path(const char *table)
{
 char *path;
 const char *label;
 void *node, *chosen;

 label = planetcore_get_key(table, PLANETCORE_KEY_SERIAL_PORT);
 if (!label)
  return;

 node = find_node_by_prop_value_str(((void*)0), "linux,planetcore-label",
                                    label);
 if (!node)
  return;

 path = get_path(node, prop_buf, MAX_PROP_LEN);
 if (!path)
  return;

 chosen = finddevice("/chosen");
 if (!chosen)
  chosen = create_node(((void*)0), "chosen");
 if (!chosen)
  return;

 setprop_str(chosen, "linux,stdout-path", path);
}
