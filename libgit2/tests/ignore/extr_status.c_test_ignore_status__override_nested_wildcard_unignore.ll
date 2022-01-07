; ModuleID = '/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__override_nested_wildcard_unignore.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__override_nested_wildcard_unignore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"empty_standard_repo/dir\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"empty_standard_repo/dir/subdir\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"empty_standard_repo/.gitignore\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"a.test\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"empty_standard_repo/dir/.gitignore\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"!*.test\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"empty_standard_repo/dir/subdir/.gitignore\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"empty_standard_repo/dir/a.test\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"pong\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"empty_standard_repo/dir/subdir/a.test\00", align 1
@GIT_STATUS_SHOW_INDEX_AND_WORKDIR = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c".gitignore\00", align 1
@GIT_STATUS_WT_NEW = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"dir/.gitignore\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"dir/a.test\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"dir/subdir/.gitignore\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ignore_status__override_nested_wildcard_unignore() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_10__, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32* %5, i32** %1, align 8
  %6 = bitcast %struct.TYPE_10__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 8, i1 false)
  %7 = call i32 @git_futils_mkdir_r(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 511)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = call i32 @git_futils_mkdir_r(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 511)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %12 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %13 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %14 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %15 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %16 = load i32, i32* @GIT_STATUS_SHOW_INDEX_AND_WORKDIR, align 4
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNTRACKED, align 4
  %19 = load i32, i32* @GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS, align 4
  %20 = or i32 %18, %19
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @git_status_list_new(i32** %2, i32* %22, %struct.TYPE_10__* %3)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @git_status_list_entrycount(i32* %25)
  %27 = call i32 @cl_assert_equal_sz(i32 4, i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call %struct.TYPE_11__* @git_status_byindex(i32* %28, i32 0)
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %4, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = icmp ne %struct.TYPE_11__* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @cl_assert(i32 %32)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @GIT_STATUS_WT_NEW, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @cl_assert_equal_i(i32 %41, i32 %44)
  %46 = load i32*, i32** %2, align 8
  %47 = call %struct.TYPE_11__* @git_status_byindex(i32* %46, i32 1)
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %4, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = icmp ne %struct.TYPE_11__* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @cl_assert(i32 %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @GIT_STATUS_WT_NEW, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @cl_assert_equal_i(i32 %59, i32 %62)
  %64 = load i32*, i32** %2, align 8
  %65 = call %struct.TYPE_11__* @git_status_byindex(i32* %64, i32 2)
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %4, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = icmp ne %struct.TYPE_11__* %66, null
  %68 = zext i1 %67 to i32
  %69 = call i32 @cl_assert(i32 %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @GIT_STATUS_WT_NEW, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @cl_assert_equal_i(i32 %77, i32 %80)
  %82 = load i32*, i32** %2, align 8
  %83 = call %struct.TYPE_11__* @git_status_byindex(i32* %82, i32 3)
  store %struct.TYPE_11__* %83, %struct.TYPE_11__** %4, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %85 = icmp ne %struct.TYPE_11__* %84, null
  %86 = zext i1 %85 to i32
  %87 = call i32 @cl_assert(i32 %86)
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @GIT_STATUS_WT_NEW, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @cl_assert_equal_i(i32 %95, i32 %98)
  %100 = load i32*, i32** %2, align 8
  %101 = call i32 @git_status_list_free(i32* %100)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_futils_mkdir_r(i8*, i32) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @git_status_list_new(i32**, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #1

declare dso_local i32 @git_status_list_entrycount(i32*) #1

declare dso_local %struct.TYPE_11__* @git_status_byindex(i32*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_status_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
