; ModuleID = '/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__filename_with_cr.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__filename_with_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"empty_standard_repo/.gitignore\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Icon\0D\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Icon\0D\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Ico\0Dn\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Ico\0Dn\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Ico\0Dn\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Ico\0Dn\0D\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Ico\0Dn\0D\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Icon\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Icon\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ignore_status__filename_with_cr() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %2, i32* @g_repo, align 4
  %3 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %4 = load i32, i32* @g_repo, align 4
  %5 = call i32 @git_ignore_path_is_ignored(i32* %1, i32 %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @cl_assert_equal_i(i32 1, i32 %7)
  %9 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %10 = load i32, i32* @g_repo, align 4
  %11 = call i32 @git_ignore_path_is_ignored(i32* %1, i32 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @cl_assert_equal_i(i32 1, i32 %13)
  %15 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %16 = load i32, i32* @g_repo, align 4
  %17 = call i32 @git_ignore_path_is_ignored(i32* %1, i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @cl_assert_equal_i(i32 1, i32 %19)
  %21 = load i32, i32* @g_repo, align 4
  %22 = call i32 @git_ignore_path_is_ignored(i32* %1, i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @cl_assert_equal_i(i32 0, i32 %24)
  %26 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %27 = load i32, i32* @g_repo, align 4
  %28 = call i32 @git_ignore_path_is_ignored(i32* %1, i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @cl_assert_equal_i(i32 1, i32 %30)
  %32 = load i32, i32* @g_repo, align 4
  %33 = call i32 @git_ignore_path_is_ignored(i32* %1, i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @cl_assert_equal_i(i32 0, i32 %35)
  %37 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %38 = load i32, i32* @g_repo, align 4
  %39 = call i32 @git_ignore_path_is_ignored(i32* %1, i32 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @cl_assert_equal_i(i32 0, i32 %41)
  %43 = load i32, i32* @g_repo, align 4
  %44 = call i32 @git_ignore_path_is_ignored(i32* %1, i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @cl_assert_equal_i(i32 1, i32 %46)
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_ignore_path_is_ignored(i32*, i32, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
