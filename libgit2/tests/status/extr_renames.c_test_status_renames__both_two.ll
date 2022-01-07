; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_renames.c_test_status_renames__both_two.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_renames.c_test_status_renames__both_two.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.status_entry = type { i32, i8*, i8* }

@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_STATUS_INDEX_RENAMED = common dso_local global i32 0, align 4
@GIT_STATUS_INDEX_MODIFIED = common dso_local global i32 0, align 4
@GIT_STATUS_WT_RENAMED = common dso_local global i32 0, align 4
@GIT_STATUS_WT_MODIFIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ikeepsix.txt\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ikeepsix-both.txt\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"sixserving.txt\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"sixserving-index.txt\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"songof7cities.txt\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"songof7cities-workdir.txt\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"untimely.txt\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"untimely-both.txt\00", align 1
@GIT_STATUS_OPT_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"ikeepsix-index.txt\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"untimely-index.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_renames__both_two() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca [4 x %struct.status_entry], align 16
  %5 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 4, i1 false)
  %6 = getelementptr inbounds [4 x %struct.status_entry], [4 x %struct.status_entry]* %4, i64 0, i64 0
  %7 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %6, i32 0, i32 0
  %8 = load i32, i32* @GIT_STATUS_INDEX_RENAMED, align 4
  %9 = load i32, i32* @GIT_STATUS_INDEX_MODIFIED, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @GIT_STATUS_WT_RENAMED, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @GIT_STATUS_WT_MODIFIED, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %7, align 8
  %15 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %6, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %16 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %6, i32 0, i32 2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %6, i64 1
  %18 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %17, i32 0, i32 0
  %19 = load i32, i32* @GIT_STATUS_INDEX_RENAMED, align 4
  %20 = load i32, i32* @GIT_STATUS_INDEX_MODIFIED, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %18, align 8
  %22 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %17, i32 0, i32 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %22, align 8
  %23 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %17, i32 0, i32 2
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %23, align 8
  %24 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %17, i64 1
  %25 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %24, i32 0, i32 0
  %26 = load i32, i32* @GIT_STATUS_WT_RENAMED, align 4
  %27 = load i32, i32* @GIT_STATUS_WT_MODIFIED, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %25, align 8
  %29 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %24, i32 0, i32 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8** %29, align 8
  %30 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %24, i32 0, i32 2
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8** %30, align 8
  %31 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %24, i64 1
  %32 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %31, i32 0, i32 0
  %33 = load i32, i32* @GIT_STATUS_INDEX_RENAMED, align 4
  %34 = load i32, i32* @GIT_STATUS_WT_RENAMED, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %32, align 8
  %36 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %31, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %36, align 8
  %37 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %31, i32 0, i32 2
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8** %37, align 8
  %38 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNTRACKED, align 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX, align 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR, align 4
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @g_repo, align 4
  %51 = call i32 @git_repository_index(i32** %1, i32 %50)
  %52 = call i32 @cl_git_pass(i32 %51)
  %53 = load i32, i32* @g_repo, align 4
  %54 = call i32 @rename_and_edit_file(i32 %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %55 = load i32, i32* @g_repo, align 4
  %56 = call i32 @rename_and_edit_file(i32 %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @g_repo, align 4
  %58 = call i32 @rename_file(i32 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %59 = load i32*, i32** %1, align 8
  %60 = call i32 @git_index_remove_bypath(i32* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %61 = call i32 @cl_git_pass(i32 %60)
  %62 = load i32*, i32** %1, align 8
  %63 = call i32 @git_index_remove_bypath(i32* %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %64 = call i32 @cl_git_pass(i32 %63)
  %65 = load i32*, i32** %1, align 8
  %66 = call i32 @git_index_remove_bypath(i32* %65, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %67 = call i32 @cl_git_pass(i32 %66)
  %68 = load i32*, i32** %1, align 8
  %69 = call i32 @git_index_add_bypath(i32* %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %70 = call i32 @cl_git_pass(i32 %69)
  %71 = load i32*, i32** %1, align 8
  %72 = call i32 @git_index_add_bypath(i32* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %73 = call i32 @cl_git_pass(i32 %72)
  %74 = load i32*, i32** %1, align 8
  %75 = call i32 @git_index_add_bypath(i32* %74, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %76 = call i32 @cl_git_pass(i32 %75)
  %77 = load i32*, i32** %1, align 8
  %78 = call i32 @git_index_write(i32* %77)
  %79 = call i32 @cl_git_pass(i32 %78)
  %80 = load i32, i32* @g_repo, align 4
  %81 = call i32 @rename_and_edit_file(i32 %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @g_repo, align 4
  %83 = call i32 @rename_and_edit_file(i32 %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %84 = load i32, i32* @g_repo, align 4
  %85 = call i32 @rename_file(i32 %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %86 = load i32, i32* @g_repo, align 4
  %87 = call i32 @git_status_list_new(i32** %2, i32 %86, %struct.TYPE_4__* %3)
  %88 = call i32 @cl_git_pass(i32 %87)
  %89 = load i32*, i32** %2, align 8
  %90 = getelementptr inbounds [4 x %struct.status_entry], [4 x %struct.status_entry]* %4, i64 0, i64 0
  %91 = call i32 @check_status(i32* %89, %struct.status_entry* %90, i32 4)
  %92 = load i32*, i32** %2, align 8
  %93 = call i32 @git_status_list_free(i32* %92)
  %94 = load i32*, i32** %1, align 8
  %95 = call i32 @git_index_free(i32* %94)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @rename_and_edit_file(i32, i8*, i8*) #2

declare dso_local i32 @rename_file(i32, i8*, i8*) #2

declare dso_local i32 @git_index_remove_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_status_list_new(i32**, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @check_status(i32*, %struct.status_entry*, i32) #2

declare dso_local i32 @git_status_list_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
