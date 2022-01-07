
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct stat {int st_mtime; int st_size; } ;
typedef scalar_t__ ssize_t ;


 int O_RDONLY ;
 int close (int) ;
 int content_length ;
 int content_type ;
 int die_errno (char*,char*) ;
 int end_headers (struct strbuf*) ;
 int errno ;
 int free (char*) ;
 scalar_t__ fstat (int,struct stat*) ;
 char* git_pathdup (char*,char const*) ;
 int hdr_date (struct strbuf*,int ,int ) ;
 int hdr_int (struct strbuf*,int ,int ) ;
 int hdr_str (struct strbuf*,int ,char const*) ;
 int last_modified ;
 int not_found (struct strbuf*,char*,char*,int ) ;
 int open (char*,int ) ;
 int strerror (int ) ;
 int write_or_die (int,char*,scalar_t__) ;
 char* xmalloc (size_t) ;
 scalar_t__ xread (int,char*,size_t) ;

__attribute__((used)) static void send_local_file(struct strbuf *hdr, const char *the_type,
    const char *name)
{
 char *p = git_pathdup("%s", name);
 size_t buf_alloc = 8192;
 char *buf = xmalloc(buf_alloc);
 int fd;
 struct stat sb;

 fd = open(p, O_RDONLY);
 if (fd < 0)
  not_found(hdr, "Cannot open '%s': %s", p, strerror(errno));
 if (fstat(fd, &sb) < 0)
  die_errno("Cannot stat '%s'", p);

 hdr_int(hdr, content_length, sb.st_size);
 hdr_str(hdr, content_type, the_type);
 hdr_date(hdr, last_modified, sb.st_mtime);
 end_headers(hdr);

 for (;;) {
  ssize_t n = xread(fd, buf, buf_alloc);
  if (n < 0)
   die_errno("Cannot read '%s'", p);
  if (!n)
   break;
  write_or_die(1, buf, n);
 }
 close(fd);
 free(buf);
 free(p);
}
