; ModuleID = '/home/carl/AnghaBench/libgit2/tests/attr/extr_flags.c_test_attr_flags__subdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/attr/extr_flags.c_test_attr_flags__subdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"attr_index\00", align 1
@GIT_ATTR_CHECK_NO_SYSTEM = common dso_local global i32 0, align 4
@GIT_ATTR_CHECK_FILE_THEN_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"sub/sub/README.md\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"sub/sub/README.txt\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"another\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"again\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"beep\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@GIT_ATTR_CHECK_INDEX_THEN_FILE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"1337\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"5\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_attr_flags__subdir() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = load i32, i32* @GIT_ATTR_CHECK_NO_SYSTEM, align 4
  %6 = load i32, i32* @GIT_ATTR_CHECK_FILE_THEN_INDEX, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @git_attr_get(i8** %2, i32* %4, i32 %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @cl_assert_equal_s(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %12 = load i32*, i32** %1, align 8
  %13 = load i32, i32* @GIT_ATTR_CHECK_NO_SYSTEM, align 4
  %14 = load i32, i32* @GIT_ATTR_CHECK_FILE_THEN_INDEX, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @git_attr_get(i8** %2, i32* %12, i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @cl_assert_equal_s(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %20 = load i32*, i32** %1, align 8
  %21 = load i32, i32* @GIT_ATTR_CHECK_NO_SYSTEM, align 4
  %22 = load i32, i32* @GIT_ATTR_CHECK_FILE_THEN_INDEX, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @git_attr_get(i8** %2, i32* %20, i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @GIT_ATTR_IS_TRUE(i8* %26)
  %28 = call i32 @cl_assert(i32 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = load i32, i32* @GIT_ATTR_CHECK_NO_SYSTEM, align 4
  %31 = load i32, i32* @GIT_ATTR_CHECK_FILE_THEN_INDEX, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @git_attr_get(i8** %2, i32* %29, i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @cl_assert_equal_s(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %37 = load i32*, i32** %1, align 8
  %38 = load i32, i32* @GIT_ATTR_CHECK_NO_SYSTEM, align 4
  %39 = load i32, i32* @GIT_ATTR_CHECK_INDEX_THEN_FILE, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @git_attr_get(i8** %2, i32* %37, i32 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i8*, i8** %2, align 8
  %44 = call i32 @cl_assert_equal_s(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %45 = load i32*, i32** %1, align 8
  %46 = load i32, i32* @GIT_ATTR_CHECK_NO_SYSTEM, align 4
  %47 = load i32, i32* @GIT_ATTR_CHECK_INDEX_THEN_FILE, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @git_attr_get(i8** %2, i32* %45, i32 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = load i8*, i8** %2, align 8
  %52 = call i32 @cl_assert_equal_s(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %53 = load i32*, i32** %1, align 8
  %54 = load i32, i32* @GIT_ATTR_CHECK_NO_SYSTEM, align 4
  %55 = load i32, i32* @GIT_ATTR_CHECK_INDEX_THEN_FILE, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @git_attr_get(i8** %2, i32* %53, i32 %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %58 = call i32 @cl_git_pass(i32 %57)
  %59 = load i8*, i8** %2, align 8
  %60 = call i32 @GIT_ATTR_IS_TRUE(i8* %59)
  %61 = call i32 @cl_assert(i32 %60)
  %62 = load i32*, i32** %1, align 8
  %63 = load i32, i32* @GIT_ATTR_CHECK_NO_SYSTEM, align 4
  %64 = load i32, i32* @GIT_ATTR_CHECK_INDEX_THEN_FILE, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @git_attr_get(i8** %2, i32* %62, i32 %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %67 = call i32 @cl_git_pass(i32 %66)
  %68 = load i8*, i8** %2, align 8
  %69 = call i32 @cl_assert_equal_s(i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_attr_get(i8**, i32*, i32, i8*, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @GIT_ATTR_IS_TRUE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
