
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
struct packed_git {int pack_name; } ;
struct bitmap_index {int map_size; int * map; scalar_t__ map_pos; struct packed_git* pack; } ;


 int MAP_PRIVATE ;
 int PROT_READ ;
 int close (int) ;
 int free (char*) ;
 scalar_t__ fstat (int,struct stat*) ;
 int git_open (char*) ;
 scalar_t__ load_bitmap_header (struct bitmap_index*) ;
 int munmap (int *,int ) ;
 scalar_t__ open_pack_index (struct packed_git*) ;
 char* pack_bitmap_filename (struct packed_git*) ;
 int warning (char*,int ) ;
 int * xmmap (int *,int ,int ,int ,int,int ) ;
 int xsize_t (int ) ;

__attribute__((used)) static int open_pack_bitmap_1(struct bitmap_index *bitmap_git, struct packed_git *packfile)
{
 int fd;
 struct stat st;
 char *idx_name;

 if (open_pack_index(packfile))
  return -1;

 idx_name = pack_bitmap_filename(packfile);
 fd = git_open(idx_name);
 free(idx_name);

 if (fd < 0)
  return -1;

 if (fstat(fd, &st)) {
  close(fd);
  return -1;
 }

 if (bitmap_git->pack) {
  warning("ignoring extra bitmap file: %s", packfile->pack_name);
  close(fd);
  return -1;
 }

 bitmap_git->pack = packfile;
 bitmap_git->map_size = xsize_t(st.st_size);
 bitmap_git->map = xmmap(((void*)0), bitmap_git->map_size, PROT_READ, MAP_PRIVATE, fd, 0);
 bitmap_git->map_pos = 0;
 close(fd);

 if (load_bitmap_header(bitmap_git) < 0) {
  munmap(bitmap_git->map, bitmap_git->map_size);
  bitmap_git->map = ((void*)0);
  bitmap_git->map_size = 0;
  return -1;
 }

 return 0;
}
