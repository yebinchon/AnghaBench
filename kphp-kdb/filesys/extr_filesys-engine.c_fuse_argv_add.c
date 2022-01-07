
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAX_FUSE_PARAMS ;
 int assert (int) ;
 scalar_t__ fuse_argc ;
 char** fuse_argv ;
 char* strtok (char*,char*) ;

__attribute__((used)) static void fuse_argv_add (char *s) {
  char *p;
  for (p = strtok (s, "\t "); p != ((void*)0); p = strtok (((void*)0), "\t ")) {
    assert (fuse_argc < MAX_FUSE_PARAMS);
    fuse_argv[fuse_argc++] = p;
  }
}
