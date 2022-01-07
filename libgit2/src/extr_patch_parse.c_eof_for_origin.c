
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_DIFF_LINE_ADDITION ;
 int GIT_DIFF_LINE_ADD_EOFNL ;
 int GIT_DIFF_LINE_CONTEXT_EOFNL ;
 int GIT_DIFF_LINE_DELETION ;
 int GIT_DIFF_LINE_DEL_EOFNL ;

__attribute__((used)) static int eof_for_origin(int origin) {
 if (origin == GIT_DIFF_LINE_ADDITION)
  return GIT_DIFF_LINE_ADD_EOFNL;
 if (origin == GIT_DIFF_LINE_DELETION)
  return GIT_DIFF_LINE_DEL_EOFNL;
 return GIT_DIFF_LINE_CONTEXT_EOFNL;
}
