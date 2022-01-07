; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/extr_cache.c_test_object_cache__cleanup.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/extr_cache.c_test_object_cache__cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32* null, align 8
@GIT_OPT_SET_CACHE_OBJECT_LIMIT = common dso_local global i32 0, align 4
@GIT_OBJECT_BLOB = common dso_local global i64 0, align 8
@GIT_OBJECT_TREE = common dso_local global i64 0, align 8
@GIT_OBJECT_COMMIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_cache__cleanup() #0 {
  %1 = load i32*, i32** @g_repo, align 8
  %2 = call i32 @git_repository_free(i32* %1)
  store i32* null, i32** @g_repo, align 8
  %3 = load i32, i32* @GIT_OPT_SET_CACHE_OBJECT_LIMIT, align 4
  %4 = load i64, i64* @GIT_OBJECT_BLOB, align 8
  %5 = trunc i64 %4 to i32
  %6 = call i32 @git_libgit2_opts(i32 %3, i32 %5, i64 0)
  %7 = load i32, i32* @GIT_OPT_SET_CACHE_OBJECT_LIMIT, align 4
  %8 = load i64, i64* @GIT_OBJECT_TREE, align 8
  %9 = trunc i64 %8 to i32
  %10 = call i32 @git_libgit2_opts(i32 %7, i32 %9, i64 4096)
  %11 = load i32, i32* @GIT_OPT_SET_CACHE_OBJECT_LIMIT, align 4
  %12 = load i64, i64* @GIT_OBJECT_COMMIT, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @git_libgit2_opts(i32 %11, i32 %13, i64 4096)
  ret void
}

declare dso_local i32 @git_repository_free(i32*) #1

declare dso_local i32 @git_libgit2_opts(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
