; ModuleID = '/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__subdirectories.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__subdirectories.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"empty_standard_repo/ignore_me\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"I'm going to be ignored!\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"empty_standard_repo/.gitignore\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"ignore_me\0A\00", align 1
@cb_status__single = common dso_local global i32 0, align 4
@GIT_STATUS_IGNORED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"ignore_me\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"empty_standard_repo/test/ignore_me\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"empty_standard_repo/test/ignore_me/file\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"empty_standard_repo/test/ignore_me/file2\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Me, too!\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"test/ignore_me/file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ignore_status__subdirectories() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %2, i32* @g_repo, align 4
  %3 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %5 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 16)
  %6 = load i32, i32* @g_repo, align 4
  %7 = load i32, i32* @cb_status__single, align 4
  %8 = call i32 @git_status_foreach(i32 %6, i32 %7, %struct.TYPE_4__* %1)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @cl_assert_equal_i(i32 2, i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @GIT_STATUS_IGNORED, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @cl_assert(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %20 = load i32, i32* @g_repo, align 4
  %21 = call i32 @git_status_file(i64* %19, i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GIT_STATUS_IGNORED, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @cl_assert(i32 %27)
  %29 = call i32 @assert_is_ignored(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %30 = call i32 @git_futils_mkdir_r(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 509)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %34 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 16)
  %35 = load i32, i32* @g_repo, align 4
  %36 = load i32, i32* @cb_status__single, align 4
  %37 = call i32 @git_status_foreach(i32 %35, i32 %36, %struct.TYPE_4__* %1)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @cl_assert_equal_i(i32 3, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %43 = load i32, i32* @g_repo, align 4
  %44 = call i32 @git_status_file(i64* %42, i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @GIT_STATUS_IGNORED, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @cl_assert(i32 %50)
  %52 = call i32 @assert_is_ignored(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_status_foreach(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_status_file(i64*, i32, i8*) #1

declare dso_local i32 @assert_is_ignored(i8*) #1

declare dso_local i32 @git_futils_mkdir_r(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
