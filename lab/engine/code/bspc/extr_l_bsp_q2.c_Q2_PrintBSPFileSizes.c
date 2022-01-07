
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int texinfo_t ;
typedef int dvertex_t ;
typedef int dsurfedges ;
typedef int dplane_t ;
typedef int dnode_t ;
typedef int dmodel_t ;
typedef int dleaffaces ;
typedef int dleafbrushes ;
typedef int dleaf_t ;
typedef int dface_t ;
typedef int dedge_t ;
typedef int dbrushside_t ;
typedef int dbrush_t ;
typedef int dareaportal_t ;
typedef int darea_t ;


 int Q2_ParseEntities () ;
 int entdatasize ;
 int lightdatasize ;
 int num_entities ;
 int numareaportals ;
 int numareas ;
 int numbrushes ;
 int numbrushsides ;
 int numedges ;
 int numfaces ;
 int numleafbrushes ;
 int numleaffaces ;
 int numleafs ;
 int nummodels ;
 int numnodes ;
 int numplanes ;
 int numsurfedges ;
 int numtexinfo ;
 int numvertexes ;
 int printf (char*,...) ;
 int visdatasize ;

void Q2_PrintBSPFileSizes (void)
{
 if (!num_entities)
  Q2_ParseEntities();

 printf ("%6i models       %7i\n"
  ,nummodels, (int)(nummodels*sizeof(dmodel_t)));
 printf ("%6i brushes      %7i\n"
  ,numbrushes, (int)(numbrushes*sizeof(dbrush_t)));
 printf ("%6i brushsides   %7i\n"
  ,numbrushsides, (int)(numbrushsides*sizeof(dbrushside_t)));
 printf ("%6i planes       %7i\n"
  ,numplanes, (int)(numplanes*sizeof(dplane_t)));
 printf ("%6i texinfo      %7i\n"
  ,numtexinfo, (int)(numtexinfo*sizeof(texinfo_t)));
 printf ("%6i entdata      %7i\n", num_entities, entdatasize);

 printf ("\n");

 printf ("%6i vertexes     %7i\n"
  ,numvertexes, (int)(numvertexes*sizeof(dvertex_t)));
 printf ("%6i nodes        %7i\n"
  ,numnodes, (int)(numnodes*sizeof(dnode_t)));
 printf ("%6i faces        %7i\n"
  ,numfaces, (int)(numfaces*sizeof(dface_t)));
 printf ("%6i leafs        %7i\n"
  ,numleafs, (int)(numleafs*sizeof(dleaf_t)));
 printf ("%6i leaffaces    %7i\n"
  ,numleaffaces, (int)(numleaffaces*sizeof(dleaffaces[0])));
 printf ("%6i leafbrushes  %7i\n"
  ,numleafbrushes, (int)(numleafbrushes*sizeof(dleafbrushes[0])));
 printf ("%6i surfedges    %7i\n"
  ,numsurfedges, (int)(numsurfedges*sizeof(dsurfedges[0])));
 printf ("%6i edges        %7i\n"
  ,numedges, (int)(numedges*sizeof(dedge_t)));

 printf ("%6i areas        %7i\n"
  ,numareas, (int)(numareas*sizeof(darea_t)));
 printf ("%6i areaportals  %7i\n"
  ,numareaportals, (int)(numareaportals*sizeof(dareaportal_t)));

 printf ("      lightdata    %7i\n", lightdatasize);
 printf ("      visdata      %7i\n", visdatasize);
}
