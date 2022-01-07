; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/extr_cache.c_test_object_cache__initialize_cache_no_trees.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/extr_cache.c_test_object_cache__initialize_cache_no_trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32* null, align 8
@GIT_OBJECT_TREE = common dso_local global i32 0, align 4
@object_type = common dso_local global i32 0, align 4
@cache_limit = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_cache__initialize_cache_no_trees() #0 {
  store i32* null, i32** @g_repo, align 8
  %1 = load i32, i32* @GIT_OBJECT_TREE, align 4
  store i32 %1, i32* @object_type, align 4
  store i64 0, i64* @cache_limit, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
