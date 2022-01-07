; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/workdir/extr_dirty.c_merge_dirty_files.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/workdir/extr_dirty.c_merge_dirty_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@repo = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@GIT_RESET_HARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @merge_dirty_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_dirty_files(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %6 = load i32, i32* @repo, align 4
  %7 = call i32 @git_repository_head(i32** %3, i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %11 = call i32 @git_reference_peel(i32** %4, i32* %9, i32 %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @repo, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @GIT_RESET_HARD, align 4
  %16 = call i32 @git_reset(i32 %13, i32* %14, i32 %15, i32* null)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i8**, i8*** %2, align 8
  %19 = call i32 @write_files(i8** %18)
  %20 = call i32 (...) @merge_branch()
  store i32 %20, i32* %5, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @git_object_free(i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @git_reference_free(i32* %23)
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_head(i32**, i32) #1

declare dso_local i32 @git_reference_peel(i32**, i32*, i32) #1

declare dso_local i32 @git_reset(i32, i32*, i32, i32*) #1

declare dso_local i32 @write_files(i8**) #1

declare dso_local i32 @merge_branch(...) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
