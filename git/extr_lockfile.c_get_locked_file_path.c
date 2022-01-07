
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; scalar_t__ buf; } ;
struct lock_file {int tempfile; } ;


 int BUG (char*) ;
 int LOCK_SUFFIX ;
 scalar_t__ LOCK_SUFFIX_LEN ;
 struct strbuf STRBUF_INIT ;
 int get_tempfile_path (int ) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_setlen (struct strbuf*,scalar_t__) ;
 scalar_t__ strcmp (scalar_t__,int ) ;

char *get_locked_file_path(struct lock_file *lk)
{
 struct strbuf ret = STRBUF_INIT;

 strbuf_addstr(&ret, get_tempfile_path(lk->tempfile));
 if (ret.len <= LOCK_SUFFIX_LEN ||
     strcmp(ret.buf + ret.len - LOCK_SUFFIX_LEN, LOCK_SUFFIX))
  BUG("get_locked_file_path() called for malformed lock object");

 strbuf_setlen(&ret, ret.len - LOCK_SUFFIX_LEN);
 return strbuf_detach(&ret, ((void*)0));
}
