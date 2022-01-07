; ModuleID = '/home/carl/AnghaBench/libgit2/tests/path/extr_core.c_test_path_core__isvalid_dotgit_with_hfs_ignorables.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/path/extr_core.c_test_path_core__isvalid_dotgit_with_hfs_ignorables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c".git\00", align 1
@GIT_PATH_REJECT_DOT_GIT_HFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c".git\E2\80\8C\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c".gi\E2\80\8DT\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c".g\E2\80\8EIt\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c".\E2\80\8FgIt\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"\E2\80\AA.gIt\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\E2\80\AB.\E2\80\ACG\E2\80\ADI\E2\80\AEt\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"\E2\81\AB.\E2\80\AAG\E2\81\ABI\E2\80\ACt\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"\E2\81\AD.\E2\80\AEG\EF\BB\BFIT\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c".g\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c".gi\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c" .git\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"..git\E2\80\8C\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c".gi\E2\80\8DT.\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c".g\E2\80It\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c".\E2gIt\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"\E2\80\AA.gi\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c".gi\80\8DT\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c".gi\8DT\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c".g\E2i\80T\8E\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c".git\E2\80\BF\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c".git\E2\AB\81\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_path_core__isvalid_dotgit_with_hfs_ignorables() #0 {
  %1 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_HFS, align 4
  %2 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32 %1)
  %3 = call i32 @cl_assert_equal_b(i32 0, i32 %2)
  %4 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_HFS, align 4
  %5 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %4)
  %6 = call i32 @cl_assert_equal_b(i32 0, i32 %5)
  %7 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_HFS, align 4
  %8 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %7)
  %9 = call i32 @cl_assert_equal_b(i32 0, i32 %8)
  %10 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_HFS, align 4
  %11 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %10)
  %12 = call i32 @cl_assert_equal_b(i32 0, i32 %11)
  %13 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_HFS, align 4
  %14 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 %13)
  %15 = call i32 @cl_assert_equal_b(i32 0, i32 %14)
  %16 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_HFS, align 4
  %17 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 %16)
  %18 = call i32 @cl_assert_equal_b(i32 0, i32 %17)
  %19 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_HFS, align 4
  %20 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 %19)
  %21 = call i32 @cl_assert_equal_b(i32 0, i32 %20)
  %22 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_HFS, align 4
  %23 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 %22)
  %24 = call i32 @cl_assert_equal_b(i32 0, i32 %23)
  %25 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_HFS, align 4
  %26 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 %25)
  %27 = call i32 @cl_assert_equal_b(i32 0, i32 %26)
  %28 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_HFS, align 4
  %29 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 0, i32 %28)
  %30 = call i32 @cl_assert_equal_b(i32 1, i32 %29)
  %31 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_HFS, align 4
  %32 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 0, i32 %31)
  %33 = call i32 @cl_assert_equal_b(i32 1, i32 %32)
  %34 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_HFS, align 4
  %35 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 0, i32 %34)
  %36 = call i32 @cl_assert_equal_b(i32 1, i32 %35)
  %37 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_HFS, align 4
  %38 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 0, i32 %37)
  %39 = call i32 @cl_assert_equal_b(i32 1, i32 %38)
  %40 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_HFS, align 4
  %41 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 0, i32 %40)
  %42 = call i32 @cl_assert_equal_b(i32 1, i32 %41)
  %43 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_HFS, align 4
  %44 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 0, i32 %43)
  %45 = call i32 @cl_assert_equal_b(i32 1, i32 %44)
  %46 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_HFS, align 4
  %47 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 0, i32 %46)
  %48 = call i32 @cl_assert_equal_b(i32 1, i32 %47)
  %49 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_HFS, align 4
  %50 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 0, i32 %49)
  %51 = call i32 @cl_assert_equal_b(i32 1, i32 %50)
  %52 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_HFS, align 4
  %53 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 0, i32 %52)
  %54 = call i32 @cl_assert_equal_b(i32 1, i32 %53)
  %55 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_HFS, align 4
  %56 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32 0, i32 %55)
  %57 = call i32 @cl_assert_equal_b(i32 1, i32 %56)
  %58 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_HFS, align 4
  %59 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32 0, i32 %58)
  %60 = call i32 @cl_assert_equal_b(i32 1, i32 %59)
  %61 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_HFS, align 4
  %62 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i32 0, i32 %61)
  %63 = call i32 @cl_assert_equal_b(i32 1, i32 %62)
  %64 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_HFS, align 4
  %65 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i32 0, i32 %64)
  %66 = call i32 @cl_assert_equal_b(i32 1, i32 %65)
  %67 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT_HFS, align 4
  %68 = call i32 @git_path_isvalid(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i32 0, i32 %67)
  %69 = call i32 @cl_assert_equal_b(i32 1, i32 %68)
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
