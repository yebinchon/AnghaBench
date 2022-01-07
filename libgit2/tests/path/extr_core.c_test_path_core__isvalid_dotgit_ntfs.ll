; ModuleID = '/home/carl/AnghaBench/libgit2/tests/path/extr_core.c_test_path_core__isvalid_dotgit_ntfs.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/path/extr_core.c_test_path_core__isvalid_dotgit_ntfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c".git\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".git \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".git.\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c".git.. .\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"git~1\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"git~1 \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"git~1.\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"git~1.. .\00", align 1
@GIT_PATH_REJECT_DOT_GIT_NTFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_path_core__isvalid_dotgit_ntfs() #0 {
  %1 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %2 = call i32 @cl_assert_equal_b(i32 1, i32 %1)
  %3 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  %4 = call i32 @cl_assert_equal_b(i32 1, i32 %3)
  %5 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  %6 = call i32 @cl_assert_equal_b(i32 1, i32 %5)
  %7 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0)
  %8 = call i32 @cl_assert_equal_b(i32 1, i32 %7)
  %9 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0)
  %10 = call i32 @cl_assert_equal_b(i32 1, i32 %9)
  %11 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0)
  %12 = call i32 @cl_assert_equal_b(i32 1, i32 %11)
  %13 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 0)
  %14 = call i32 @cl_assert_equal_b(i32 1, i32 %13)
  %15 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 0)
  %16 = call i32 @cl_assert_equal_b(i32 1, i32 %15)
  %17 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_NTFS, align 4
  %18 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32 %17)
  %19 = call i32 @cl_assert_equal_b(i32 0, i32 %18)
  %20 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_NTFS, align 4
  %21 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %20)
  %22 = call i32 @cl_assert_equal_b(i32 0, i32 %21)
  %23 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_NTFS, align 4
  %24 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %23)
  %25 = call i32 @cl_assert_equal_b(i32 0, i32 %24)
  %26 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_NTFS, align 4
  %27 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %26)
  %28 = call i32 @cl_assert_equal_b(i32 0, i32 %27)
  %29 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_NTFS, align 4
  %30 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 %29)
  %31 = call i32 @cl_assert_equal_b(i32 0, i32 %30)
  %32 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_NTFS, align 4
  %33 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 %32)
  %34 = call i32 @cl_assert_equal_b(i32 0, i32 %33)
  %35 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_NTFS, align 4
  %36 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 %35)
  %37 = call i32 @cl_assert_equal_b(i32 0, i32 %36)
  %38 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_NTFS, align 4
  %39 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 %38)
  %40 = call i32 @cl_assert_equal_b(i32 0, i32 %39)
  ret void
}

declare dso_local i32 @cl_assert_equal_b(i32, i32) #1

declare dso_local i32 @git_path_isvalid(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
