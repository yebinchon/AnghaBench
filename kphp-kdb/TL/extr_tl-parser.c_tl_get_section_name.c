
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *tl_get_section_name (int section) {
  static const char *sections_names[2] = { "section types", "section functions" };
  if (section < 0 || section > 1) {
    return "unknown section";
  }
  return sections_names[section];
}
