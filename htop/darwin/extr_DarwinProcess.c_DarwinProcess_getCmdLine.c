
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int p_pid; char* p_comm; } ;
struct kinfo_proc {TYPE_1__ kp_proc; } ;
typedef int nargs ;
typedef int argmax ;


 int CTL_KERN ;
 int KERN_ARGMAX ;
 int KERN_PROCARGS2 ;
 int free (char*) ;
 int memcpy (int*,char*,int) ;
 int strlen (char*) ;
 int sysctl (int*,int,...) ;
 scalar_t__ xMalloc (int) ;
 char* xStrdup (char*) ;

char *DarwinProcess_getCmdLine(struct kinfo_proc* k, int* basenameOffset) {

   int mib[3], argmax, nargs, c = 0;
   size_t size;
   char *procargs, *sp, *np, *cp, *retval;


   mib[0] = CTL_KERN;
   mib[1] = KERN_ARGMAX;

   size = sizeof( argmax );
   if ( sysctl( mib, 2, &argmax, &size, ((void*)0), 0 ) == -1 ) {
      goto ERROR_A;
   }


   procargs = ( char * ) xMalloc( argmax );
   if ( procargs == ((void*)0) ) {
      goto ERROR_A;
   }
   mib[0] = CTL_KERN;
   mib[1] = KERN_PROCARGS2;
   mib[2] = k->kp_proc.p_pid;

   size = ( size_t ) argmax;
   if ( sysctl( mib, 3, procargs, &size, ((void*)0), 0 ) == -1 ) {
      goto ERROR_B;
   }

   memcpy( &nargs, procargs, sizeof( nargs ) );
   cp = procargs + sizeof( nargs );


   for ( ; cp < &procargs[size]; cp++ ) {
      if ( *cp == '\0' ) {

         break;
      }
   }
   if ( cp == &procargs[size] ) {
      goto ERROR_B;
   }


   for ( ; cp < &procargs[size]; cp++ ) {
      if ( *cp != '\0' ) {

         break;
      }
   }
   if ( cp == &procargs[size] ) {
      goto ERROR_B;
   }

   sp = cp;

   *basenameOffset = 0;
   for ( np = ((void*)0); c < nargs && cp < &procargs[size]; cp++ ) {
      if ( *cp == '\0' ) {
         c++;
         if ( np != ((void*)0) ) {

            *np = ' ';
         }

        np = cp;
        if (*basenameOffset == 0) {
           *basenameOffset = cp - sp;
        }
     }
   }





   if ( np == ((void*)0) || np == sp ) {

      goto ERROR_B;
   }
   if (*basenameOffset == 0) {
      *basenameOffset = np - sp;
   }


   retval = xStrdup(sp);


   free( procargs );

   return retval;

ERROR_B:
   free( procargs );
ERROR_A:
   retval = xStrdup(k->kp_proc.p_comm);
   *basenameOffset = strlen(retval);

   return retval;
}
