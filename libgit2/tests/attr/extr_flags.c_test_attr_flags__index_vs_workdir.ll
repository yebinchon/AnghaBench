; ModuleID = '/home/carl/AnghaBench/libgit2/tests/attr/extr_flags.c_test_attr_flags__index_vs_workdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/attr/extr_flags.c_test_attr_flags__index_vs_workdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"attr_index\00", align 1
@GIT_ATTR_CHECK_NO_SYSTEM = common dso_local global i32 0, align 4
@GIT_ATTR_CHECK_FILE_THEN_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"README.md\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"blargh\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"goop\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"README.txt\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@GIT_ATTR_CHECK_INDEX_THEN_FILE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"garble\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_attr_flags__index_vs_workdir() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = call i32 @git_repository_is_bare(i32* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @cl_assert(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* @GIT_ATTR_CHECK_NO_SYSTEM, align 4
  %12 = load i32, i32* @GIT_ATTR_CHECK_FILE_THEN_INDEX, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @git_attr_get(i8** %2, i32* %10, i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @GIT_ATTR_IS_FALSE(i8* %16)
  %18 = call i32 @cl_assert(i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = load i32, i32* @GIT_ATTR_CHECK_NO_SYSTEM, align 4
  %21 = load i32, i32* @GIT_ATTR_CHECK_FILE_THEN_INDEX, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @git_attr_get(i8** %2, i32* %19, i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @cl_assert_equal_s(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %27 = load i32*, i32** %1, align 8
  %28 = load i32, i32* @GIT_ATTR_CHECK_NO_SYSTEM, align 4
  %29 = load i32, i32* @GIT_ATTR_CHECK_FILE_THEN_INDEX, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @git_attr_get(i8** %2, i32* %27, i32 %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @GIT_ATTR_IS_FALSE(i8* %33)
  %35 = call i32 @cl_assert(i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = load i32, i32* @GIT_ATTR_CHECK_NO_SYSTEM, align 4
  %38 = load i32, i32* @GIT_ATTR_CHECK_INDEX_THEN_FILE, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @git_attr_get(i8** %2, i32* %36, i32 %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = load i8*, i8** %2, align 8
  %43 = call i32 @GIT_ATTR_IS_TRUE(i8* %42)
  %44 = call i32 @cl_assert(i32 %43)
  %45 = load i32*, i32** %1, align 8
  %46 = load i32, i32* @GIT_ATTR_CHECK_NO_SYSTEM, align 4
  %47 = load i32, i32* @GIT_ATTR_CHECK_INDEX_THEN_FILE, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @git_attr_get(i8** %2, i32* %45, i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = load i8*, i8** %2, align 8
  %52 = call i32 @cl_assert_equal_s(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %53 = load i32*, i32** %1, align 8
  %54 = load i32, i32* @GIT_ATTR_CHECK_NO_SYSTEM, align 4
  %55 = load i32, i32* @GIT_ATTR_CHECK_INDEX_THEN_FILE, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @git_attr_get(i8** %2, i32* %53, i32 %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %58 = call i32 @cl_git_pass(i32 %57)
  %59 = load i8*, i8** %2, align 8
  %60 = call i32 @GIT_ATTR_IS_TRUE(i8* %59)
  %61 = call i32 @cl_assert(i32 %60)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_repository_is_bare(i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_attr_get(i8**, i32*, i32, i8*, i8*) #1

declare dso_local i32 @GIT_ATTR_IS_FALSE(i8*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #1

declare dso_local i32 @GIT_ATTR_IS_TRUE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
