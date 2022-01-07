
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * headnode; } ;
typedef TYPE_1__ tree_t ;
typedef int node_t ;


 int CreateVisPortals_r (int *) ;
 int Error (char*,char*) ;
 int MakeHeadnodePortals (TYPE_1__*) ;
 int NumberLeafs_r (int *) ;
 char* PORTALFILE ;
 int SaveClusters_r (int *) ;
 int Tree_FreePortals_r (int *) ;
 int WritePortalFile_r (int *) ;
 int clusterleaf ;
 int fclose (int ) ;
 int fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int num_visclusters ;
 int num_visportals ;
 int pf ;
 int printf (char*,char*) ;
 int qprintf (char*,...) ;
 char* source ;
 int sprintf (char*,char*,char*) ;

void WritePortalFile (tree_t *tree)
{
 char filename[1024];
 node_t *headnode;

 qprintf ("--- WritePortalFile ---\n");

 headnode = tree->headnode;
 num_visclusters = 0;
 num_visportals = 0;

 Tree_FreePortals_r (headnode);

 MakeHeadnodePortals (tree);

 CreateVisPortals_r (headnode);



 NumberLeafs_r (headnode);


 sprintf (filename, "%s.prt", source);
 printf ("writing %s\n", filename);
 pf = fopen (filename, "w");
 if (!pf)
  Error ("Error opening %s", filename);

 fprintf (pf, "%s\n", PORTALFILE);
 fprintf (pf, "%i\n", num_visclusters);
 fprintf (pf, "%i\n", num_visportals);

 qprintf ("%5i visclusters\n", num_visclusters);
 qprintf ("%5i visportals\n", num_visportals);

 WritePortalFile_r (headnode);

 fclose (pf);



 clusterleaf = 1;
 SaveClusters_r (headnode);
}
