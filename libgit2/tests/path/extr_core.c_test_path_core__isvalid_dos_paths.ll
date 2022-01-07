; ModuleID = '/home/carl/AnghaBench/libgit2/tests/path/extr_core.c_test_path_core__isvalid_dos_paths.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/path/extr_core.c_test_path_core__isvalid_dos_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"aux\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"aux.\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"aux:\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"aux.asdf\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"aux.asdf\\zippy\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"aux:asdf\\foobar\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"con\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"prn\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"nul\00", align 1
@GIT_PATH_REJECT_DOS_PATHS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"aux1\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"auxn\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"aux\\foo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_path_core__isvalid_dos_paths() #0 {
  %1 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %2 = call i32 @cl_assert_equal_b(i32 1, i32 %1)
  %3 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  %4 = call i32 @cl_assert_equal_b(i32 1, i32 %3)
  %5 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0)
  %6 = call i32 @cl_assert_equal_b(i32 1, i32 %5)
  %7 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0)
  %8 = call i32 @cl_assert_equal_b(i32 1, i32 %7)
  %9 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0)
  %10 = call i32 @cl_assert_equal_b(i32 1, i32 %9)
  %11 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0)
  %12 = call i32 @cl_assert_equal_b(i32 1, i32 %11)
  %13 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 0)
  %14 = call i32 @cl_assert_equal_b(i32 1, i32 %13)
  %15 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 0)
  %16 = call i32 @cl_assert_equal_b(i32 1, i32 %15)
  %17 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 0)
  %18 = call i32 @cl_assert_equal_b(i32 1, i32 %17)
  %19 = load i32, i32* @GIT_PATH_REJECT_DOS_PATHS, align 4
  %20 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0, i32 %19)
  %21 = call i32 @cl_assert_equal_b(i32 0, i32 %20)
  %22 = load i32, i32* @GIT_PATH_REJECT_DOS_PATHS, align 4
  %23 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %22)
  %24 = call i32 @cl_assert_equal_b(i32 0, i32 %23)
  %25 = load i32, i32* @GIT_PATH_REJECT_DOS_PATHS, align 4
  %26 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %25)
  %27 = call i32 @cl_assert_equal_b(i32 0, i32 %26)
  %28 = load i32, i32* @GIT_PATH_REJECT_DOS_PATHS, align 4
  %29 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %28)
  %30 = call i32 @cl_assert_equal_b(i32 0, i32 %29)
  %31 = load i32, i32* @GIT_PATH_REJECT_DOS_PATHS, align 4
  %32 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 %31)
  %33 = call i32 @cl_assert_equal_b(i32 0, i32 %32)
  %34 = load i32, i32* @GIT_PATH_REJECT_DOS_PATHS, align 4
  %35 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 %34)
  %36 = call i32 @cl_assert_equal_b(i32 0, i32 %35)
  %37 = load i32, i32* @GIT_PATH_REJECT_DOS_PATHS, align 4
  %38 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 %37)
  %39 = call i32 @cl_assert_equal_b(i32 0, i32 %38)
  %40 = load i32, i32* @GIT_PATH_REJECT_DOS_PATHS, align 4
  %41 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 %40)
  %42 = call i32 @cl_assert_equal_b(i32 0, i32 %41)
  %43 = load i32, i32* @GIT_PATH_REJECT_DOS_PATHS, align 4
  %44 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 %43)
  %45 = call i32 @cl_assert_equal_b(i32 0, i32 %44)
  %46 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 0, i32 0)
  %47 = call i32 @cl_assert_equal_b(i32 1, i32 %46)
  %48 = load i32, i32* @GIT_PATH_REJECT_DOS_PATHS, align 4
  %49 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 0, i32 %48)
  %50 = call i32 @cl_assert_equal_b(i32 1, i32 %49)
  %51 = load i32, i32* @GIT_PATH_REJECT_DOS_PATHS, align 4
  %52 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 0, i32 %51)
  %53 = call i32 @cl_assert_equal_b(i32 1, i32 %52)
  %54 = load i32, i32* @GIT_PATH_REJECT_DOS_PATHS, align 4
  %55 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 0, i32 %54)
  %56 = call i32 @cl_assert_equal_b(i32 1, i32 %55)
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
