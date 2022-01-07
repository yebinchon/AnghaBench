; ModuleID = '/home/carl/AnghaBench/libgit2/tests/ignore/extr_path.c_test_ignore_path__gitignore_in_subdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/ignore/extr_path.c_test_ignore_path__gitignore_in_subdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"attr/.gitignore\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"attr/dir1\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"attr/dir1/dir2\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"attr/dir1/dir2/dir3\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"attr/dir1/dir2/dir3/.gitignore\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"dir1/\0Adir1/subdir/\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"dir1/file\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"dir1/dir2/file\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"dir1/dir2/dir3/file\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"dir1/dir2/dir3/dir1/file\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"dir1/dir2/dir3/dir1/subdir/foo\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"core.ignorecase\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"DiR1/\0ADiR1/subdir/\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ignore_path__gitignore_in_subdir() #0 {
  %1 = call i32 @cl_git_rmfile(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @p_mkdir(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 511)
  %3 = call i32 @cl_must_pass(i32 %2)
  %4 = call i32 @p_mkdir(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 511)
  %5 = call i32 @cl_must_pass(i32 %4)
  %6 = call i32 @p_mkdir(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 511)
  %7 = call i32 @cl_must_pass(i32 %6)
  %8 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %9 = call i32 @assert_is_ignored(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %10 = call i32 @assert_is_ignored(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %11 = call i32 @assert_is_ignored(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %12 = call i32 @assert_is_ignored(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %13 = call i32 @assert_is_ignored(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %14 = load i32, i32* @g_repo, align 4
  %15 = call i64 @cl_repo_get_bool(i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %0
  %18 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %19 = call i32 @assert_is_ignored(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %20 = call i32 @assert_is_ignored(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %21 = call i32 @assert_is_ignored(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %22 = call i32 @assert_is_ignored(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %23 = call i32 @assert_is_ignored(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  br label %24

24:                                               ; preds = %17, %0
  ret void
}

declare dso_local i32 @cl_git_rmfile(i8*) #1

declare dso_local i32 @cl_must_pass(i32) #1

declare dso_local i32 @p_mkdir(i8*, i32) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @assert_is_ignored(i32, i8*) #1

declare dso_local i64 @cl_repo_get_bool(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
