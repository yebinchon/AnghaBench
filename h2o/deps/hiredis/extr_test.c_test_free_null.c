
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int freeReplyObject (void*) ;
 int redisFree (void*) ;
 int test (char*) ;
 int test_cond (int ) ;

__attribute__((used)) static void test_free_null(void) {
    void *redisCtx = ((void*)0);
    void *reply = ((void*)0);

    test("Don't fail when redisFree is passed a NULL value: ");
    redisFree(redisCtx);
    test_cond(redisCtx == ((void*)0));

    test("Don't fail when freeReplyObject is passed a NULL value: ");
    freeReplyObject(reply);
    test_cond(reply == ((void*)0));
}
