
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* tree; TYPE_1__* lhead; int blocNode; TYPE_1__* nodeList; TYPE_1__** loc; TYPE_1__* ltail; } ;
struct TYPE_6__ {TYPE_4__ compressor; TYPE_4__ decompressor; } ;
typedef TYPE_2__ huffman_t ;
typedef int huff_t ;
struct TYPE_5__ {size_t symbol; int * right; int left; int parent; int * prev; int next; scalar_t__ weight; } ;


 int Com_Memset (TYPE_4__*,int ,int) ;
 size_t NYT ;

void Huff_Init(huffman_t *huff) {

 Com_Memset(&huff->compressor, 0, sizeof(huff_t));
 Com_Memset(&huff->decompressor, 0, sizeof(huff_t));


 huff->decompressor.tree = huff->decompressor.lhead = huff->decompressor.ltail = huff->decompressor.loc[NYT] = &(huff->decompressor.nodeList[huff->decompressor.blocNode++]);
 huff->decompressor.tree->symbol = NYT;
 huff->decompressor.tree->weight = 0;
 huff->decompressor.lhead->next = huff->decompressor.lhead->prev = ((void*)0);
 huff->decompressor.tree->parent = huff->decompressor.tree->left = huff->decompressor.tree->right = ((void*)0);


 huff->compressor.tree = huff->compressor.lhead = huff->compressor.loc[NYT] = &(huff->compressor.nodeList[huff->compressor.blocNode++]);
 huff->compressor.tree->symbol = NYT;
 huff->compressor.tree->weight = 0;
 huff->compressor.lhead->next = huff->compressor.lhead->prev = ((void*)0);
 huff->compressor.tree->parent = huff->compressor.tree->left = huff->compressor.tree->right = ((void*)0);
}
