; ModuleID = '/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__empty_repo_with_gitignore_rewrite.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__empty_repo_with_gitignore_rewrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"empty_standard_repo/look-ma.txt\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"I'm going to be ignored!\00", align 1
@cb_status__single = common dso_local global i32 0, align 4
@GIT_STATUS_WT_NEW = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"look-ma.txt\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"empty_standard_repo/.gitignore\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"*.nomatch\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"*.txt\0A\00", align 1
@GIT_STATUS_IGNORED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ignore_status__empty_repo_with_gitignore_rewrite() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %2, i32* @g_repo, align 4
  %3 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 16)
  %5 = load i32, i32* @g_repo, align 4
  %6 = load i32, i32* @cb_status__single, align 4
  %7 = call i32 @git_status_foreach(i32 %5, i32 %6, %struct.TYPE_4__* %1)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 1
  %12 = zext i1 %11 to i32
  %13 = call i32 @cl_assert(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @GIT_STATUS_WT_NEW, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %21 = load i32, i32* @g_repo, align 4
  %22 = call i32 @git_status_file(i64* %20, i32 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @GIT_STATUS_WT_NEW, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @cl_assert(i32 %28)
  %30 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %31 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %32 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 16)
  %33 = load i32, i32* @g_repo, align 4
  %34 = load i32, i32* @cb_status__single, align 4
  %35 = call i32 @git_status_foreach(i32 %33, i32 %34, %struct.TYPE_4__* %1)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i32
  %41 = call i32 @cl_assert(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @GIT_STATUS_WT_NEW, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @cl_assert(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %49 = load i32, i32* @g_repo, align 4
  %50 = call i32 @git_status_file(i64* %48, i32 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @GIT_STATUS_WT_NEW, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @cl_assert(i32 %56)
  %58 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %59 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %60 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 16)
  %61 = load i32, i32* @g_repo, align 4
  %62 = load i32, i32* @cb_status__single, align 4
  %63 = call i32 @git_status_foreach(i32 %61, i32 %62, %struct.TYPE_4__* %1)
  %64 = call i32 @cl_git_pass(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 2
  %68 = zext i1 %67 to i32
  %69 = call i32 @cl_assert(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @GIT_STATUS_IGNORED, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @cl_assert(i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %77 = load i32, i32* @g_repo, align 4
  %78 = call i32 @git_status_file(i64* %76, i32 %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %79 = call i32 @cl_git_pass(i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @GIT_STATUS_IGNORED, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @cl_assert(i32 %84)
  %86 = call i32 @assert_is_ignored(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_status_foreach(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_status_file(i64*, i32, i8*) #1

declare dso_local i32 @refute_is_ignored(i8*) #1

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #1

declare dso_local i32 @assert_is_ignored(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
