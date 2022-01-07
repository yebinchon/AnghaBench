; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_bypath.c_test_index_bypath__add_submodule.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_bypath.c_test_index_bypath__add_submodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"sm_changed_head\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_WD_MODIFIED = common dso_local global i32 0, align 4
@g_idx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_bypath__add_submodule() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %3 = load i32, i32* @g_repo, align 4
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @git_submodule_status(i32* %1, i32 %3, i8* %4, i32 0)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_MODIFIED, align 4
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_MODIFIED, align 4
  %10 = and i32 %8, %9
  %11 = call i32 @cl_assert_equal_i(i32 %7, i32 %10)
  %12 = load i32, i32* @g_idx, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @git_index_add_bypath(i32 %12, i8* %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @g_repo, align 4
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @git_submodule_status(i32* %1, i32 %16, i8* %17, i32 0)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @GIT_SUBMODULE_STATUS_WD_MODIFIED, align 4
  %22 = and i32 %20, %21
  %23 = call i32 @cl_assert_equal_i(i32 0, i32 %22)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_submodule_status(i32*, i32, i8*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_index_add_bypath(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
