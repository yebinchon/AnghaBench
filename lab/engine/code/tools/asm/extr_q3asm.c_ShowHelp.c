
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Error (char*,char*) ;

__attribute__((used)) static void ShowHelp( char *argv0 ) {
 Error("Usage: %s [OPTION]... [FILES]...\nAssemble LCC bytecode assembly to Q3VM bytecode.\n\n  -o OUTPUT      Write assembled output to file OUTPUT.qvm\n  -f LISTFILE    Read options and list of files to assemble from LISTFILE.q3asm\n  -b BUCKETS     Set symbol hash table to BUCKETS buckets\n  -m             Generate a mapfile for each OUTPUT.qvm\n  -v             Verbose compilation report\n  -vq3           Produce a qvm file compatible with Q3 1.32b\n  -h --help -?   Show this help\n", argv0);
}
