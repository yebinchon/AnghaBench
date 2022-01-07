
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct signature_check {char* gpg_status; char* gpg_output; char const* payload; } ;


 unsigned int GPG_VERIFY_RAW ;
 unsigned int GPG_VERIFY_VERBOSE ;
 int fputs (char const*,int ) ;
 int stderr ;
 int stdout ;

void print_signature_buffer(const struct signature_check *sigc, unsigned flags)
{
 const char *output = flags & GPG_VERIFY_RAW ?
  sigc->gpg_status : sigc->gpg_output;

 if (flags & GPG_VERIFY_VERBOSE && sigc->payload)
  fputs(sigc->payload, stdout);

 if (output)
  fputs(output, stderr);
}
