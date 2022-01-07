
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;
typedef int FILE ;


 int put_buf (char const*,int ,int *,int *,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void put_str(const char* s, FILE* fout, jv* strout, int T) {
  put_buf(s, strlen(s), fout, strout, T);
}
