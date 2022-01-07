; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_status.c_test_submodule_status__untracked_dirs_containing_ignored_files.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_status.c_test_submodule_status__untracked_dirs_containing_ignored_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"submod2/.git/modules/sm_unchanged/info/exclude\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"\0A*.ignored\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"sm_unchanged/directory\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"submod2\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"submod2/sm_unchanged/directory/i_am.ignored\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"ignore this file, please\0A\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"sm_unchanged\00", align 1
@GIT_SUBMODULE_STATUS_IN_HEAD = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_IN_INDEX = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_IN_CONFIG = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_IN_WD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_status__untracked_dirs_containing_ignored_files() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @cl_git_append2file(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 @git_futils_mkdir_relative(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 493, i32 0, i32* null)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %7 = load i32, i32* @g_repo, align 4
  %8 = call i32 @get_submodule_status(i32 %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @GIT_SUBMODULE_STATUS_IS_UNMODIFIED(i32 %9)
  %11 = call i32 @cl_assert(i32 %10)
  %12 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_HEAD, align 4
  %13 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_INDEX, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_CONFIG, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_WD, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @cl_assert(i32 %22)
  ret void
}

declare dso_local i32 @cl_git_append2file(i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_futils_mkdir_relative(i8*, i8*, i32, i32, i32*) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @get_submodule_status(i32, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @GIT_SUBMODULE_STATUS_IS_UNMODIFIED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
