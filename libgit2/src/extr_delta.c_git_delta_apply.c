
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_DELTA (size_t,unsigned long) ;
 scalar_t__ GIT_ADD_SIZET_OVERFLOW (size_t*,size_t,size_t) ;
 int GIT_ERROR_CHECK_ALLOC (unsigned char*) ;
 int GIT_ERROR_CHECK_ALLOC_ADD (size_t*,size_t,int) ;
 int GIT_ERROR_INVALID ;
 int git__free (void*) ;
 unsigned char* git__malloc (size_t) ;
 int git_error_set (int ,char*) ;
 scalar_t__ hdr_sz (size_t*,unsigned char const**,unsigned char const*) ;
 int memcpy (unsigned char*,unsigned char const*,unsigned char) ;

int git_delta_apply(
 void **out,
 size_t *out_len,
 const unsigned char *base,
 size_t base_len,
 const unsigned char *delta,
 size_t delta_len)
{
 const unsigned char *delta_end = delta + delta_len;
 size_t base_sz, res_sz, alloc_sz;
 unsigned char *res_dp;

 *out = ((void*)0);
 *out_len = 0;






 if ((hdr_sz(&base_sz, &delta, delta_end) < 0) || (base_sz != base_len)) {
  git_error_set(GIT_ERROR_INVALID, "failed to apply delta: base size does not match given data");
  return -1;
 }

 if (hdr_sz(&res_sz, &delta, delta_end) < 0) {
  git_error_set(GIT_ERROR_INVALID, "failed to apply delta: base size does not match given data");
  return -1;
 }

 GIT_ERROR_CHECK_ALLOC_ADD(&alloc_sz, res_sz, 1);
 res_dp = git__malloc(alloc_sz);
 GIT_ERROR_CHECK_ALLOC(res_dp);

 res_dp[res_sz] = '\0';
 *out = res_dp;
 *out_len = res_sz;

 while (delta < delta_end) {
  unsigned char cmd = *delta++;
  if (cmd & 0x80) {

   size_t off = 0, len = 0, end;


   if (cmd & 0x01) { if (delta < delta_end) (off) |= ((unsigned) *delta++ << 0UL); else goto fail; };
   if (cmd & 0x02) { if (delta < delta_end) (off) |= ((unsigned) *delta++ << 8UL); else goto fail; };
   if (cmd & 0x04) { if (delta < delta_end) (off) |= ((unsigned) *delta++ << 16UL); else goto fail; };
   if (cmd & 0x08) { if (delta < delta_end) (off) |= ((unsigned) *delta++ << 24UL); else goto fail; };

   if (cmd & 0x10) { if (delta < delta_end) (len) |= ((unsigned) *delta++ << 0UL); else goto fail; };
   if (cmd & 0x20) { if (delta < delta_end) (len) |= ((unsigned) *delta++ << 8UL); else goto fail; };
   if (cmd & 0x40) { if (delta < delta_end) (len) |= ((unsigned) *delta++ << 16UL); else goto fail; };
   if (!len) len = 0x10000;


   if (GIT_ADD_SIZET_OVERFLOW(&end, off, len) ||
       base_len < end || res_sz < len)
    goto fail;

   memcpy(res_dp, base + off, len);
   res_dp += len;
   res_sz -= len;

  } else if (cmd) {




   if (delta_end - delta < cmd || res_sz < cmd)
    goto fail;
   memcpy(res_dp, delta, cmd);
   delta += cmd;
   res_dp += cmd;
   res_sz -= cmd;

  } else {

   goto fail;
  }
 }

 if (delta != delta_end || res_sz)
  goto fail;
 return 0;

fail:
 git__free(*out);

 *out = ((void*)0);
 *out_len = 0;

 git_error_set(GIT_ERROR_INVALID, "failed to apply delta");
 return -1;
}
