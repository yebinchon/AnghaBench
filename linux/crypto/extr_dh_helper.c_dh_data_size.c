
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dh {unsigned int key_size; unsigned int p_size; unsigned int q_size; unsigned int g_size; } ;



__attribute__((used)) static inline unsigned int dh_data_size(const struct dh *p)
{
 return p->key_size + p->p_size + p->q_size + p->g_size;
}
