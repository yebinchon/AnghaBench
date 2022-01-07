; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_renames.c_test_status_renames__zero_byte_file_does_not_fail.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_renames.c_test_status_renames__zero_byte_file_does_not_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.status_entry = type { i8*, i8*, i32 }

@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_STATUS_WT_DELETED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ikeepsix.txt\00", align 1
@GIT_STATUS_WT_NEW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"zerobyte.txt\00", align 1
@GIT_STATUS_OPT_RENAMES_FROM_REWRITES = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_INCLUDE_IGNORED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS = common dso_local global i32 0, align 4
@GIT_STATUS_SHOW_INDEX_AND_WORKDIR = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RECURSE_IGNORED_DIRS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"renames/ikeepsix.txt\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"renames/zerobyte.txt\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@g_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_renames__zero_byte_file_does_not_fail() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca [2 x %struct.status_entry], align 16
  %4 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 4, i1 false)
  %5 = getelementptr inbounds [2 x %struct.status_entry], [2 x %struct.status_entry]* %3, i64 0, i64 0
  %6 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %5, i32 0, i32 0
  %7 = load i32, i32* @GIT_STATUS_WT_DELETED, align 4
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i8*
  store i8* %9, i8** %6, align 8
  %10 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %5, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %5, i32 0, i32 2
  store i32 ptrtoint ([13 x i8]* @.str to i32), i32* %11, align 8
  %12 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %5, i64 1
  %13 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %12, i32 0, i32 0
  %14 = load i32, i32* @GIT_STATUS_WT_NEW, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %13, align 8
  %17 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %12, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  %18 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %12, i32 0, i32 2
  store i32 ptrtoint ([13 x i8]* @.str.1 to i32), i32* %18, align 8
  %19 = load i32, i32* @GIT_STATUS_OPT_RENAMES_FROM_REWRITES, align 4
  %20 = load i32, i32* @GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_IGNORED, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNTRACKED, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @GIT_STATUS_OPT_RECURSE_UNTRACKED_DIRS, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @GIT_STATUS_SHOW_INDEX_AND_WORKDIR, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @GIT_STATUS_OPT_RECURSE_IGNORED_DIRS, align 4
  %33 = or i32 %31, %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 4
  %37 = call i32 @p_unlink(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i32, i32* @g_repo, align 4
  %40 = call i32 @git_status_list_new(i32** %1, i32 %39, %struct.TYPE_4__* %2)
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = getelementptr inbounds [2 x %struct.status_entry], [2 x %struct.status_entry]* %3, i64 0, i64 0
  %44 = call i32 @check_status(i32* %42, %struct.status_entry* %43, i32 2)
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @git_status_list_free(i32* %45)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @p_unlink(i8*) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_status_list_new(i32**, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @check_status(i32*, %struct.status_entry*, i32) #2

declare dso_local i32 @git_status_list_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
