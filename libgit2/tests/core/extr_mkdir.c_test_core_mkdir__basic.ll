; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_mkdir.c_test_core_mkdir__basic.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_mkdir.c_test_core_mkdir__basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cleanup_basic_dirs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"d0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"d1\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"d1/d1.1/d1.2\00", align 1
@GIT_MKDIR_PATH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"d1/d1.1\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"d2\00", align 1
@GIT_MKDIR_EXCL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"d3\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"d3/d3.1/d3.2\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"d4\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"d4/d4.1/\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"d4/d4.1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_mkdir__basic() #0 {
  %1 = load i32, i32* @cleanup_basic_dirs, align 4
  %2 = call i32 @cl_set_cleanup(i32 %1, i32* null)
  %3 = call i32 @git_path_isdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i32 @cl_assert(i32 %6)
  %8 = call i32 @git_futils_mkdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 493, i32 0)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = call i32 @git_path_isdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @cl_assert(i32 %10)
  %12 = call i32 @git_path_isdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @cl_assert(i32 %15)
  %17 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %18 = call i32 @git_futils_mkdir(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 493, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = call i32 @git_path_isdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @cl_assert(i32 %20)
  %22 = call i32 @git_path_isdir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %23 = call i32 @cl_assert(i32 %22)
  %24 = call i32 @git_path_isdir(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 @cl_assert(i32 %24)
  %26 = call i32 @git_path_isdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @cl_assert(i32 %29)
  %31 = load i32, i32* @GIT_MKDIR_EXCL, align 4
  %32 = call i32 @git_futils_mkdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 493, i32 %31)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = call i32 @git_path_isdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %35 = call i32 @cl_assert(i32 %34)
  %36 = load i32, i32* @GIT_MKDIR_EXCL, align 4
  %37 = call i32 @git_futils_mkdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 493, i32 %36)
  %38 = call i32 @cl_git_fail(i32 %37)
  %39 = call i32 @git_path_isdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @cl_assert(i32 %42)
  %44 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %45 = load i32, i32* @GIT_MKDIR_EXCL, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @git_futils_mkdir(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 493, i32 %46)
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = call i32 @git_path_isdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %50 = call i32 @cl_assert(i32 %49)
  %51 = call i32 @git_path_isdir(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %52 = call i32 @cl_assert(i32 %51)
  %53 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %54 = load i32, i32* @GIT_MKDIR_EXCL, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @git_futils_mkdir(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 493, i32 %55)
  %57 = call i32 @cl_git_fail(i32 %56)
  %58 = call i32 @git_path_isdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @cl_assert(i32 %61)
  %63 = load i32, i32* @GIT_MKDIR_PATH, align 4
  %64 = call i32 @git_futils_mkdir(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 493, i32 %63)
  %65 = call i32 @cl_git_pass(i32 %64)
  %66 = call i32 @git_path_isdir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %67 = call i32 @cl_assert(i32 %66)
  ret void
}

declare dso_local i32 @cl_set_cleanup(i32, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_path_isdir(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_futils_mkdir(i8*, i32, i32) #1

declare dso_local i32 @cl_git_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
