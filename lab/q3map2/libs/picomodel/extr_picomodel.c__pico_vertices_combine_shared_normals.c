
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef float* picoVec3_t ;
struct TYPE_15__ {float** member_0; size_t* member_1; } ;
typedef TYPE_2__ picoSmoothVertices_t ;
typedef size_t picoIndex_t ;
struct TYPE_14__ {size_t* data; } ;
struct TYPE_16__ {TYPE_1__ indices; } ;
typedef TYPE_3__ UniqueIndices ;
struct TYPE_17__ {size_t* data; size_t* last; } ;
typedef TYPE_4__ IndexArray ;


 int UniqueIndices_destroy (TYPE_3__*) ;
 int UniqueIndices_init (TYPE_3__*,int ,TYPE_2__*) ;
 size_t UniqueIndices_insert (TYPE_3__*,size_t) ;
 int UniqueIndices_reserve (TYPE_3__*,size_t) ;
 size_t UniqueIndices_size (TYPE_3__*) ;
 int _pico_add_vec (float*,float*,float*) ;
 int _pico_copy_vec (float*,float*) ;
 int indexarray_clear (TYPE_4__*) ;
 int indexarray_push_back (TYPE_4__*,size_t) ;
 int indexarray_reserve (TYPE_4__*,size_t) ;
 int lessSmoothVertex ;

void _pico_vertices_combine_shared_normals(picoVec3_t* xyz, picoIndex_t* smoothingGroups, picoVec3_t* normals, picoIndex_t numVertices) {
 UniqueIndices vertices;
 IndexArray indices;
 picoSmoothVertices_t smoothVertices = { xyz, smoothingGroups };
 UniqueIndices_init(&vertices, lessSmoothVertex, &smoothVertices);
 UniqueIndices_reserve(&vertices, numVertices);
 indexarray_reserve(&indices, numVertices);

 {
  picoIndex_t i = 0;
  for (; i < numVertices; ++i)
  {
   size_t size = UniqueIndices_size(&vertices);
   picoIndex_t index = UniqueIndices_insert(&vertices, i);
   if ((size_t)index != size) {
    float* normal = normals[vertices.indices.data[index]];
    _pico_add_vec(normal, normals[i], normal);
   }
   indexarray_push_back(&indices, index);
  }
 }

 {
  picoIndex_t maxIndex = 0;
  picoIndex_t* i = indices.data;
  for (; i != indices.last; ++i)
  {
   if (*i <= maxIndex) {
    _pico_copy_vec(normals[vertices.indices.data[*i]], normals[i - indices.data]);
   }
   else
   {
    maxIndex = *i;
   }
  }
 }

 UniqueIndices_destroy(&vertices);
 indexarray_clear(&indices);
}
