
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct line {struct chan* chan_out; struct chan* chan_in; struct list_head chan_list; } ;
struct chan_opts {int dummy; } ;
struct chan {int input; int output; int list; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 int free_chan (struct list_head*) ;
 int list_add (int *,struct list_head*) ;
 int list_empty (struct list_head*) ;
 struct chan* parse_chan (struct line*,char*,int,struct chan_opts const*,char**) ;
 char* strchr (char*,char) ;

int parse_chan_pair(char *str, struct line *line, int device,
      const struct chan_opts *opts, char **error_out)
{
 struct list_head *chans = &line->chan_list;
 struct chan *new;
 char *in, *out;

 if (!list_empty(chans)) {
  line->chan_in = line->chan_out = ((void*)0);
  free_chan(chans);
  INIT_LIST_HEAD(chans);
 }

 if (!str)
  return 0;

 out = strchr(str, ',');
 if (out != ((void*)0)) {
  in = str;
  *out = '\0';
  out++;
  new = parse_chan(line, in, device, opts, error_out);
  if (new == ((void*)0))
   return -1;

  new->input = 1;
  list_add(&new->list, chans);
  line->chan_in = new;

  new = parse_chan(line, out, device, opts, error_out);
  if (new == ((void*)0))
   return -1;

  list_add(&new->list, chans);
  new->output = 1;
  line->chan_out = new;
 }
 else {
  new = parse_chan(line, str, device, opts, error_out);
  if (new == ((void*)0))
   return -1;

  list_add(&new->list, chans);
  new->input = 1;
  new->output = 1;
  line->chan_in = line->chan_out = new;
 }
 return 0;
}
