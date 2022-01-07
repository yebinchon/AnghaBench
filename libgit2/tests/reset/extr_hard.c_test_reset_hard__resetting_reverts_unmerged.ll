; ModuleID = '/home/carl/AnghaBench/libgit2/tests/reset/extr_hard.c_test_reset_hard__resetting_reverts_unmerged.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/reset/extr_hard.c_test_reset_hard__resetting_reverts_unmerged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@repo = common dso_local global i32 0, align 4
@target = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"26a125e\00", align 1
@GIT_RESET_HARD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"status/conflicting_file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_reset_hard__resetting_reverts_unmerged() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  store i32 1, i32* %2, align 4
  br label %3

3:                                                ; preds = %32, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 8
  br i1 %5, label %6, label %35

6:                                                ; preds = %3
  %7 = load i32, i32* @repo, align 4
  %8 = call i32 @git_repository_index(i32** %1, i32 %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @unmerged_index_init(i32* %10, i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_index_write(i32* %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @repo, align 4
  %17 = call i32 @git_revparse_single(i32** @target, i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* @repo, align 4
  %20 = load i32*, i32** @target, align 8
  %21 = load i32, i32* @GIT_RESET_HARD, align 4
  %22 = call i32 @git_reset(i32 %19, i32* %20, i32 %21, i32* null)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = call i64 @git_path_exists(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @cl_assert(i32 %26)
  %28 = load i32*, i32** @target, align 8
  %29 = call i32 @git_object_free(i32* %28)
  store i32* null, i32** @target, align 8
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @git_index_free(i32* %30)
  br label %32

32:                                               ; preds = %6
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %3

35:                                               ; preds = %3
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index(i32**, i32) #1

declare dso_local i32 @unmerged_index_init(i32*, i32) #1

declare dso_local i32 @git_index_write(i32*) #1

declare dso_local i32 @git_revparse_single(i32**, i32, i8*) #1

declare dso_local i32 @git_reset(i32, i32*, i32, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_path_exists(i8*) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
