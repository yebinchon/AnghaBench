; ModuleID = '/home/carl/AnghaBench/libgit2/tests/filter/extr_custom.c_test_filter_custom__can_register_a_custom_filter_in_the_repository.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/filter/extr_custom.c_test_filter_custom__can_register_a_custom_filter_in_the_repository.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"herofile\00", align 1
@GIT_FILTER_TO_WORKTREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"herocorp\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"hero.bin\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"heroflip\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"doesntapplytome.bin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_filter_custom__can_register_a_custom_filter_in_the_repository() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @g_repo, align 4
  %4 = load i32, i32* @GIT_FILTER_TO_WORKTREE, align 4
  %5 = call i32 @git_filter_list_load(i32** %1, i32 %3, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %4, i32 0)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i64 @git_filter_list_length(i32* %7)
  %9 = call i32 @cl_assert_equal_sz(i32 3, i64 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @git_filter_list_free(i32* %10)
  %12 = load i32, i32* @g_repo, align 4
  %13 = load i32, i32* @GIT_FILTER_TO_WORKTREE, align 4
  %14 = call i32 @git_filter_list_load(i32** %1, i32 %12, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 0)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i64 @git_filter_list_length(i32* %16)
  store i64 %17, i64* %2, align 8
  %18 = load i64, i64* %2, align 8
  %19 = icmp eq i64 %18, 2
  br i1 %19, label %23, label %20

20:                                               ; preds = %0
  %21 = load i64, i64* %2, align 8
  %22 = icmp eq i64 %21, 3
  br label %23

23:                                               ; preds = %20, %0
  %24 = phi i1 [ true, %0 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @cl_assert(i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_filter_list_free(i32* %27)
  %29 = load i32, i32* @g_repo, align 4
  %30 = load i32, i32* @GIT_FILTER_TO_WORKTREE, align 4
  %31 = call i32 @git_filter_list_load(i32** %1, i32 %29, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 0)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = call i64 @git_filter_list_length(i32* %33)
  %35 = call i32 @cl_assert_equal_sz(i32 2, i64 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @git_filter_list_free(i32* %36)
  %38 = load i32, i32* @g_repo, align 4
  %39 = load i32, i32* @GIT_FILTER_TO_WORKTREE, align 4
  %40 = call i32 @git_filter_list_load(i32** %1, i32 %38, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %39, i32 0)
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i64 @git_filter_list_length(i32* %42)
  %44 = call i32 @cl_assert_equal_sz(i32 1, i64 %43)
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @git_filter_list_free(i32* %45)
  %47 = load i32, i32* @g_repo, align 4
  %48 = load i32, i32* @GIT_FILTER_TO_WORKTREE, align 4
  %49 = call i32 @git_filter_list_load(i32** %1, i32 %47, i32* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %48, i32 0)
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = load i32*, i32** %1, align 8
  %52 = call i64 @git_filter_list_length(i32* %51)
  %53 = call i32 @cl_assert_equal_sz(i32 0, i64 %52)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @git_filter_list_free(i32* %54)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_filter_list_load(i32**, i32, i32*, i8*, i32, i32) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i64) #1

declare dso_local i64 @git_filter_list_length(i32*) #1

declare dso_local i32 @git_filter_list_free(i32*) #1

declare dso_local i32 @cl_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
