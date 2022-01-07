; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__skips_unreadable_dirs.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__skips_unreadable_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"empty_standard_repo/r\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"empty_standard_repo/r/a\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"empty_standard_repo/r/b\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"empty_standard_repo/r/b/problem\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"not me\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"empty_standard_repo/r/c\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"empty_standard_repo/r/c/foo\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"aloha\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"empty_standard_repo/r/d\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"final\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"c/foo\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_workdir__skips_unreadable_dirs() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = call i32 (...) @cl_is_chmod_supported()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %56

6:                                                ; preds = %0
  %7 = call i64 (...) @geteuid()
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 (...) @cl_skip()
  br label %11

11:                                               ; preds = %9, %6
  %12 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* @g_repo, align 4
  %13 = call i32 @p_mkdir(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 511)
  %14 = call i32 @cl_must_pass(i32 %13)
  %15 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %16 = call i32 @p_mkdir(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 511)
  %17 = call i32 @cl_must_pass(i32 %16)
  %18 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %19 = call i32 @p_chmod(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %20 = call i32 @cl_must_pass(i32 %19)
  %21 = call i32 @p_mkdir(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 511)
  %22 = call i32 @cl_must_pass(i32 %21)
  %23 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %24 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %25 = call i32 @git_iterator_for_filesystem(i32** %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @git_iterator_advance(%struct.TYPE_3__** %2, i32* %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @git_iterator_advance(%struct.TYPE_3__** %2, i32* %34)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @git_iterator_advance(%struct.TYPE_3__** %2, i32* %41)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 %46)
  %48 = call i32 @p_chmod(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 511)
  %49 = call i32 @cl_must_pass(i32 %48)
  %50 = load i32, i32* @GIT_ITEROVER, align 4
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @git_iterator_advance(%struct.TYPE_3__** %2, i32* %51)
  %53 = call i32 @cl_assert_equal_i(i32 %50, i32 %52)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @git_iterator_free(i32* %54)
  br label %56

56:                                               ; preds = %11, %5
  ret void
}

declare dso_local i32 @cl_is_chmod_supported(...) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @cl_skip(...) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_must_pass(i32) #1

declare dso_local i32 @p_mkdir(i8*, i32) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @p_chmod(i8*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_iterator_for_filesystem(i32**, i8*, i32*) #1

declare dso_local i32 @git_iterator_advance(%struct.TYPE_3__**, i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_iterator_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
