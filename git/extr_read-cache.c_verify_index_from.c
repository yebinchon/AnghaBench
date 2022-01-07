
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stat {scalar_t__ st_size; } ;
struct TYPE_3__ {int hash; } ;
struct index_state {TYPE_1__ oid; int initialized; } ;
struct cache_header {int dummy; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_4__ {scalar_t__ rawsz; } ;


 int GIT_MAX_RAWSZ ;
 int O_RDONLY ;
 int close (int) ;
 scalar_t__ fstat (int,struct stat*) ;
 int hasheq (int ,unsigned char*) ;
 int open (char const*,int ) ;
 scalar_t__ pread_in_full (int,unsigned char*,scalar_t__,scalar_t__) ;
 TYPE_2__* the_hash_algo ;

__attribute__((used)) static int verify_index_from(const struct index_state *istate, const char *path)
{
 int fd;
 ssize_t n;
 struct stat st;
 unsigned char hash[GIT_MAX_RAWSZ];

 if (!istate->initialized)
  return 0;

 fd = open(path, O_RDONLY);
 if (fd < 0)
  return 0;

 if (fstat(fd, &st))
  goto out;

 if (st.st_size < sizeof(struct cache_header) + the_hash_algo->rawsz)
  goto out;

 n = pread_in_full(fd, hash, the_hash_algo->rawsz, st.st_size - the_hash_algo->rawsz);
 if (n != the_hash_algo->rawsz)
  goto out;

 if (!hasheq(istate->oid.hash, hash))
  goto out;

 close(fd);
 return 1;

out:
 close(fd);
 return 0;
}
