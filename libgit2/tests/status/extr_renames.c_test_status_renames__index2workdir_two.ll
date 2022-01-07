; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_renames.c_test_status_renames__index2workdir_two.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_renames.c_test_status_renames__index2workdir_two.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.status_entry = type { i32, i8*, i8* }

@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_STATUS_WT_RENAMED = common dso_local global i32 0, align 4
@GIT_STATUS_WT_MODIFIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"sixserving.txt\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"aaa.txt\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"untimely.txt\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"bbb.txt\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"songof7cities.txt\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ccc.txt\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"ikeepsix.txt\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ddd.txt\00", align 1
@GIT_STATUS_OPT_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_renames__index2workdir_two() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca [4 x %struct.status_entry], align 16
  %4 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 4, i1 false)
  %5 = getelementptr inbounds [4 x %struct.status_entry], [4 x %struct.status_entry]* %3, i64 0, i64 0
  %6 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %5, i32 0, i32 0
  %7 = load i32, i32* @GIT_STATUS_WT_RENAMED, align 4
  %8 = load i32, i32* @GIT_STATUS_WT_MODIFIED, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %6, align 8
  %10 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %5, i32 0, i32 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %5, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  %12 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %5, i64 1
  %13 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %12, i32 0, i32 0
  %14 = load i32, i32* @GIT_STATUS_WT_RENAMED, align 4
  %15 = load i32, i32* @GIT_STATUS_WT_MODIFIED, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %13, align 8
  %17 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %12, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %17, align 8
  %18 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %12, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %18, align 8
  %19 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %12, i64 1
  %20 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %19, i32 0, i32 0
  %21 = load i32, i32* @GIT_STATUS_WT_RENAMED, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %19, i32 0, i32 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %19, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %23, align 8
  %24 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %19, i64 1
  %25 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %24, i32 0, i32 0
  %26 = load i32, i32* @GIT_STATUS_WT_RENAMED, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %24, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %27, align 8
  %28 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %24, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %28, align 8
  %29 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNTRACKED, align 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR, align 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @g_repo, align 4
  %38 = call i32 @rename_file(i32 %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %39 = load i32, i32* @g_repo, align 4
  %40 = call i32 @rename_and_edit_file(i32 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @g_repo, align 4
  %42 = call i32 @rename_file(i32 %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %43 = load i32, i32* @g_repo, align 4
  %44 = call i32 @rename_and_edit_file(i32 %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32, i32* @g_repo, align 4
  %46 = call i32 @git_status_list_new(i32** %1, i32 %45, %struct.TYPE_4__* %2)
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = load i32*, i32** %1, align 8
  %49 = getelementptr inbounds [4 x %struct.status_entry], [4 x %struct.status_entry]* %3, i64 0, i64 0
  %50 = call i32 @check_status(i32* %48, %struct.status_entry* %49, i32 4)
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @git_status_list_free(i32* %51)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @rename_file(i32, i8*, i8*) #2

declare dso_local i32 @rename_and_edit_file(i32, i8*, i8*) #2

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
