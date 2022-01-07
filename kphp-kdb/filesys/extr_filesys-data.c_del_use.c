
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filesys_inode {struct filesys_inode* next; struct filesys_inode* prev; } ;


 int assert (int) ;
 struct filesys_inode* lru_head ;
 struct filesys_inode* lru_tail ;

__attribute__((used)) static void del_use (struct filesys_inode *I) {
  if (I->prev == ((void*)0)) {
    assert (lru_head == I);
    if (I->next == ((void*)0)) {
      lru_head = lru_tail = ((void*)0);
    } else {
      lru_head = lru_head->next;
      lru_head->prev = ((void*)0);
    }
  } else if (I->next == ((void*)0)) {
    assert (lru_tail == I);
    lru_tail = lru_tail->prev;
    lru_tail->next = ((void*)0);
  } else {
    I->prev->next = I->next;
    I->next->prev = I->prev;
  }
  I->prev = I->next = ((void*)0);
}
