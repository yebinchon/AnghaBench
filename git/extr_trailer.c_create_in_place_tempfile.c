
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct stat {int st_mode; } ;
typedef int FILE ;


 struct strbuf STRBUF_INIT ;
 int S_ISREG (int) ;
 int S_IWUSR ;
 int _ (char*) ;
 int die (int ,char const*) ;
 int die_errno (int ,...) ;
 int * fdopen_tempfile (int ,char*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;
 char* strrchr (char const*,char) ;
 int trailers_tempfile ;
 int xmks_tempfile_m (int ,int) ;

__attribute__((used)) static FILE *create_in_place_tempfile(const char *file)
{
 struct stat st;
 struct strbuf filename_template = STRBUF_INIT;
 const char *tail;
 FILE *outfile;

 if (stat(file, &st))
  die_errno(_("could not stat %s"), file);
 if (!S_ISREG(st.st_mode))
  die(_("file %s is not a regular file"), file);
 if (!(st.st_mode & S_IWUSR))
  die(_("file %s is not writable by user"), file);


 tail = strrchr(file, '/');
 if (tail != ((void*)0))
  strbuf_add(&filename_template, file, tail - file + 1);
 strbuf_addstr(&filename_template, "git-interpret-trailers-XXXXXX");

 trailers_tempfile = xmks_tempfile_m(filename_template.buf, st.st_mode);
 strbuf_release(&filename_template);
 outfile = fdopen_tempfile(trailers_tempfile, "w");
 if (!outfile)
  die_errno(_("could not open temporary file"));

 return outfile;
}
