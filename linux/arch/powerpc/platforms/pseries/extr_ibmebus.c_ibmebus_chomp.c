
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 char* kmalloc (size_t,int ) ;
 int memcpy (char*,char const*,size_t) ;

__attribute__((used)) static char *ibmebus_chomp(const char *in, size_t count)
{
 char *out = kmalloc(count + 1, GFP_KERNEL);

 if (!out)
  return ((void*)0);

 memcpy(out, in, count);
 out[count] = '\0';
 if (out[count - 1] == '\n')
  out[count - 1] = '\0';

 return out;
}
