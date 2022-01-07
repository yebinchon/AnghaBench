; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_renames.c_test_status_renames__both_casechange_two.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_renames.c_test_status_renames__both_casechange_two.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.status_entry = type { i32, i8*, i8* }

@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_STATUS_INDEX_RENAMED = common dso_local global i32 0, align 4
@GIT_STATUS_INDEX_MODIFIED = common dso_local global i32 0, align 4
@GIT_STATUS_WT_MODIFIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ikeepsix.txt\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"IKeepSix.txt\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"sixserving.txt\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"songof7cities.txt\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"songof7.txt\00", align 1
@GIT_STATUS_WT_RENAMED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"untimely.txt\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"untimeliest.txt\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"SONGOF7.txt\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"SixServing.txt\00", align 1
@GIT_STATUS_OPT_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"untimelier.txt\00", align 1
@GIT_INDEX_CAPABILITY_IGNORE_CASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_renames__both_casechange_two() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x %struct.status_entry], align 16
  %6 = alloca [4 x %struct.status_entry], align 16
  %7 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 4, i1 false)
  %8 = getelementptr inbounds [4 x %struct.status_entry], [4 x %struct.status_entry]* %5, i64 0, i64 0
  %9 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %8, i32 0, i32 0
  %10 = load i32, i32* @GIT_STATUS_INDEX_RENAMED, align 4
  %11 = load i32, i32* @GIT_STATUS_INDEX_MODIFIED, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @GIT_STATUS_WT_MODIFIED, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %9, align 8
  %15 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %16 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %8, i32 0, i32 2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  %17 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %8, i64 1
  %18 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %17, i32 0, i32 0
  %19 = load i32, i32* @GIT_STATUS_INDEX_MODIFIED, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %17, i32 0, i32 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %20, align 8
  %21 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %17, i32 0, i32 2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %21, align 8
  %22 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %17, i64 1
  %23 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %22, i32 0, i32 0
  %24 = load i32, i32* @GIT_STATUS_INDEX_RENAMED, align 4
  %25 = load i32, i32* @GIT_STATUS_WT_MODIFIED, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %23, align 8
  %27 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %22, i32 0, i32 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %27, align 8
  %28 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %22, i32 0, i32 2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %28, align 8
  %29 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %22, i64 1
  %30 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %29, i32 0, i32 0
  %31 = load i32, i32* @GIT_STATUS_INDEX_RENAMED, align 4
  %32 = load i32, i32* @GIT_STATUS_WT_RENAMED, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %30, align 8
  %34 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %29, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %34, align 8
  %35 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %29, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8** %35, align 8
  %36 = getelementptr inbounds [4 x %struct.status_entry], [4 x %struct.status_entry]* %6, i64 0, i64 0
  %37 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %36, i32 0, i32 0
  %38 = load i32, i32* @GIT_STATUS_INDEX_RENAMED, align 4
  %39 = load i32, i32* @GIT_STATUS_WT_MODIFIED, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @GIT_STATUS_WT_RENAMED, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %37, align 8
  %43 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %36, i32 0, i32 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %43, align 8
  %44 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %36, i32 0, i32 2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %44, align 8
  %45 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %36, i64 1
  %46 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %45, i32 0, i32 0
  %47 = load i32, i32* @GIT_STATUS_INDEX_MODIFIED, align 4
  %48 = load i32, i32* @GIT_STATUS_WT_RENAMED, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %46, align 8
  %50 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %45, i32 0, i32 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %50, align 8
  %51 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %45, i32 0, i32 2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8** %51, align 8
  %52 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %45, i64 1
  %53 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %52, i32 0, i32 0
  %54 = load i32, i32* @GIT_STATUS_INDEX_RENAMED, align 4
  %55 = load i32, i32* @GIT_STATUS_INDEX_MODIFIED, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @GIT_STATUS_WT_RENAMED, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @GIT_STATUS_WT_MODIFIED, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %53, align 8
  %61 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %52, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %61, align 8
  %62 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %52, i32 0, i32 2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %62, align 8
  %63 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %52, i64 1
  %64 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %63, i32 0, i32 0
  %65 = load i32, i32* @GIT_STATUS_INDEX_RENAMED, align 4
  %66 = load i32, i32* @GIT_STATUS_WT_RENAMED, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %64, align 8
  %68 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %63, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %68, align 8
  %69 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %63, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8** %69, align 8
  %70 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNTRACKED, align 4
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* @GIT_STATUS_OPT_RENAMES_HEAD_TO_INDEX, align 4
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* @GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR, align 4
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %78
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* @g_repo, align 4
  %83 = call i32 @git_repository_index(i32** %1, i32 %82)
  %84 = call i32 @cl_git_pass(i32 %83)
  %85 = load i32*, i32** %1, align 8
  %86 = call i32 @git_index_caps(i32* %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* @g_repo, align 4
  %88 = call i32 @rename_and_edit_file(i32 %87, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @g_repo, align 4
  %90 = call i32 @rename_and_edit_file(i32 %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* @g_repo, align 4
  %92 = call i32 @rename_file(i32 %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32, i32* @g_repo, align 4
  %94 = call i32 @rename_file(i32 %93, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %95 = load i32*, i32** %1, align 8
  %96 = call i32 @git_index_remove_bypath(i32* %95, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %97 = call i32 @cl_git_pass(i32 %96)
  %98 = load i32*, i32** %1, align 8
  %99 = call i32 @git_index_remove_bypath(i32* %98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %100 = call i32 @cl_git_pass(i32 %99)
  %101 = load i32*, i32** %1, align 8
  %102 = call i32 @git_index_remove_bypath(i32* %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %103 = call i32 @cl_git_pass(i32 %102)
  %104 = load i32*, i32** %1, align 8
  %105 = call i32 @git_index_remove_bypath(i32* %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %106 = call i32 @cl_git_pass(i32 %105)
  %107 = load i32*, i32** %1, align 8
  %108 = call i32 @git_index_add_bypath(i32* %107, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %109 = call i32 @cl_git_pass(i32 %108)
  %110 = load i32*, i32** %1, align 8
  %111 = call i32 @git_index_add_bypath(i32* %110, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %112 = call i32 @cl_git_pass(i32 %111)
  %113 = load i32*, i32** %1, align 8
  %114 = call i32 @git_index_add_bypath(i32* %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %115 = call i32 @cl_git_pass(i32 %114)
  %116 = load i32*, i32** %1, align 8
  %117 = call i32 @git_index_add_bypath(i32* %116, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %118 = call i32 @cl_git_pass(i32 %117)
  %119 = load i32*, i32** %1, align 8
  %120 = call i32 @git_index_write(i32* %119)
  %121 = call i32 @cl_git_pass(i32 %120)
  %122 = load i32, i32* @g_repo, align 4
  %123 = call i32 @rename_and_edit_file(i32 %122, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %124 = load i32, i32* @g_repo, align 4
  %125 = call i32 @rename_file(i32 %124, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %126 = load i32, i32* @g_repo, align 4
  %127 = call i32 @rename_and_edit_file(i32 %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %128 = load i32, i32* @g_repo, align 4
  %129 = call i32 @rename_file(i32 %128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %130 = load i32, i32* @g_repo, align 4
  %131 = call i32 @git_status_list_new(i32** %2, i32 %130, %struct.TYPE_4__* %3)
  %132 = call i32 @cl_git_pass(i32 %131)
  %133 = load i32*, i32** %2, align 8
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @GIT_INDEX_CAPABILITY_IGNORE_CASE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %0
  %139 = getelementptr inbounds [4 x %struct.status_entry], [4 x %struct.status_entry]* %5, i64 0, i64 0
  br label %142

140:                                              ; preds = %0
  %141 = getelementptr inbounds [4 x %struct.status_entry], [4 x %struct.status_entry]* %6, i64 0, i64 0
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi %struct.status_entry* [ %139, %138 ], [ %141, %140 ]
  %144 = call i32 @check_status(i32* %133, %struct.status_entry* %143, i32 4)
  %145 = load i32*, i32** %2, align 8
  %146 = call i32 @git_status_list_free(i32* %145)
  %147 = load i32*, i32** %1, align 8
  %148 = call i32 @git_index_free(i32* %147)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_index_caps(i32*) #2

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
