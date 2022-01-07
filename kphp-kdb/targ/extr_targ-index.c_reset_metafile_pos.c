
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_metafile_pos () ;
 scalar_t__ metafile_pos ;

__attribute__((used)) static inline void reset_metafile_pos (void) {
  get_metafile_pos ();
  metafile_pos = 0;
}
