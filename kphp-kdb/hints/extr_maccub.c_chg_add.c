
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int trp_node_ptr ;
struct TYPE_3__ {int size; int root; } ;
typedef TYPE_1__ treap ;
typedef int* changes ;


 int assert (int) ;
 int dl_free (int*,int) ;
 int* dl_malloc (int) ;
 int* dl_malloc0 (int) ;
 int memcpy (int*,int*,int) ;
 int my_rand () ;
 int trp_add_or_set (TYPE_1__*,int,int ) ;
 int trp_conv_from_array (int*,int) ;

void chg_add (changes *_x, int val) {
  assert (val > 0);

  changes x = *_x;

  int *t = 0;

  if ((long)x < 0) {
    if ((long)x == -val) {
      return;
    } else if ((-(long)x) == (val ^ 1)) {
      x = (int *)((long)-val);
    } else {
      int old = -(long)x;
      x = dl_malloc (sizeof (int) * 3);

      assert (x != ((void*)0));

      x[0] = 2;
      if (val < old) {
        x[1] = old;
        x[2] = val;
      } else {
        x[1] = val;
        x[2] = old;
      }
    }
  } else

  if (x) {
    if (x[0] > 0) {
      int len = x[0], i = 1;
      while (i <= len && (x[i] & -2) > (val & -2)) {
        i++;
      }
      if (i <= len && x[i] == val) {
        return;
      } else if (i <= len && x[i] == (val ^ 1)) {
        x[i] = val;
        return;
      }
      int j = i;
      while (j <= len && x[j]) {
        j++;
      }



      if (j > len) {
        if (len == 8) {
          trp_node_ptr root = trp_conv_from_array ((int *)x + 1, len);
          dl_free (x, sizeof (int) * (len + 1));
          x = dl_malloc (sizeof (treap));


          ((treap *)(x))->size = -len;
          ((treap *)(x))->root = root;
        } else {
          t = dl_malloc0 (sizeof (int) * (len * 2 + 1));

          assert (t != ((void*)0));

          t[0] = len * 2;
          memcpy (t + 1, x + 1, sizeof (int) * len);
          dl_free (x, sizeof (int) * (len + 1));
          len *= 2;
          x = t;
        }
      }

      if (j <= len) {
        while (j != i) {
          x[j] = x[j - 1];
          j--;
        }
        x[j] = val;
      }
    }

    if (x[0] < 0) {
      trp_add_or_set ((treap *)(x), val, my_rand());
    }

  } else {

    x = (changes)((long)-val);





  }

  *_x = x;
}
