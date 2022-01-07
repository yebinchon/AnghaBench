
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rerere_dir {scalar_t__ status_alloc; scalar_t__ status_nr; int * status; int hash; } ;


 int ALLOC_GROW (struct rerere_dir**,int,int ) ;
 int GIT_MAX_RAWSZ ;
 int MOVE_ARRAY (struct rerere_dir**,struct rerere_dir**,int) ;
 scalar_t__ get_sha1_hex (char const*,unsigned char*) ;
 int hashcpy (int ,unsigned char*) ;
 struct rerere_dir** rerere_dir ;
 int rerere_dir_alloc ;
 int rerere_dir_hash ;
 int rerere_dir_nr ;
 int scan_rerere_dir (struct rerere_dir*) ;
 int sha1_pos (unsigned char*,struct rerere_dir**,int,int ) ;
 struct rerere_dir* xmalloc (int) ;

__attribute__((used)) static struct rerere_dir *find_rerere_dir(const char *hex)
{
 unsigned char hash[GIT_MAX_RAWSZ];
 struct rerere_dir *rr_dir;
 int pos;

 if (get_sha1_hex(hex, hash))
  return ((void*)0);
 pos = sha1_pos(hash, rerere_dir, rerere_dir_nr, rerere_dir_hash);
 if (pos < 0) {
  rr_dir = xmalloc(sizeof(*rr_dir));
  hashcpy(rr_dir->hash, hash);
  rr_dir->status = ((void*)0);
  rr_dir->status_nr = 0;
  rr_dir->status_alloc = 0;
  pos = -1 - pos;


  ALLOC_GROW(rerere_dir, rerere_dir_nr + 1, rerere_dir_alloc);

  rerere_dir_nr++;
  MOVE_ARRAY(rerere_dir + pos + 1, rerere_dir + pos,
      rerere_dir_nr - pos - 1);
  rerere_dir[pos] = rr_dir;
  scan_rerere_dir(rr_dir);
 }
 return rerere_dir[pos];
}
