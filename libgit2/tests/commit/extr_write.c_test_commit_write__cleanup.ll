; ModuleID = '/home/carl/AnghaBench/libgit2/tests/commit/extr_write.c_test_commit_write__cleanup.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/commit/extr_write.c_test_commit_write__cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@head = common dso_local global i32* null, align 8
@branch = common dso_local global i32* null, align 8
@commit = common dso_local global i32* null, align 8
@head_old = common dso_local global i32* null, align 8
@GIT_OPT_ENABLE_STRICT_OBJECT_CREATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_commit_write__cleanup() #0 {
  %1 = load i32*, i32** @head, align 8
  %2 = call i32 @git_reference_free(i32* %1)
  store i32* null, i32** @head, align 8
  %3 = load i32*, i32** @branch, align 8
  %4 = call i32 @git_reference_free(i32* %3)
  store i32* null, i32** @branch, align 8
  %5 = load i32*, i32** @commit, align 8
  %6 = call i32 @git_commit_free(i32* %5)
  store i32* null, i32** @commit, align 8
  %7 = load i32*, i32** @head_old, align 8
  %8 = call i32 @git__free(i32* %7)
  store i32* null, i32** @head_old, align 8
  %9 = call i32 (...) @cl_git_sandbox_cleanup()
  %10 = load i32, i32* @GIT_OPT_ENABLE_STRICT_OBJECT_CREATION, align 4
  %11 = call i32 @git_libgit2_opts(i32 %10, i32 1)
  %12 = call i32 @cl_git_pass(i32 %11)
  ret void
}

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git__free(i32*) #1

declare dso_local i32 @cl_git_sandbox_cleanup(...) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_libgit2_opts(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
