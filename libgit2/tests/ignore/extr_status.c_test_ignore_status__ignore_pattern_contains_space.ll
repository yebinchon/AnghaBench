; ModuleID = '/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__ignore_pattern_contains_space.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__ignore_pattern_contains_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"empty_standard_repo/.gitignore\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"foo bar.txt\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"empty_standard_repo/foo bar.txt\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"I'm going to be ignored!\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"foo bar.txt\00", align 1
@GIT_STATUS_IGNORED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"empty_standard_repo/foo\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"empty_standard_repo/foo/look-ma.txt\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"I'm not going to be ignored!\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"foo/look-ma.txt\00", align 1
@GIT_STATUS_WT_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ignore_status__ignore_pattern_contains_space() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 511, i32* %2, align 4
  %3 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %3, i32* @g_repo, align 4
  %4 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %5 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @git_status_file(i32* %1, i32 %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @GIT_STATUS_IGNORED, align 4
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @cl_assert(i32 %12)
  %14 = call i32 @git_futils_mkdir_r(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 511)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %17 = load i32, i32* @g_repo, align 4
  %18 = call i32 @git_status_file(i32* %1, i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @GIT_STATUS_WT_NEW, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @cl_assert(i32 %23)
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_status_file(i32*, i32, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_futils_mkdir_r(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
