
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git__strcmp (char*,char*) ;

__attribute__((used)) static int paths_cmp(const void *a, const void *b) { return git__strcmp((char*)a, (char*)b); }
