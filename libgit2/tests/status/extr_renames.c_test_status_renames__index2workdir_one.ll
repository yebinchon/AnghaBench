; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_renames.c_test_status_renames__index2workdir_one.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_renames.c_test_status_renames__index2workdir_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.status_entry = type { i8*, i8*, i32 }

@GIT_STATUS_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_STATUS_WT_RENAMED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ikeepsix.txt\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"newname.txt\00", align 1
@GIT_STATUS_OPT_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_renames__index2workdir_one() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca [1 x %struct.status_entry], align 16
  %4 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_STATUS_OPTIONS_INIT to i8*), i64 4, i1 false)
  %5 = getelementptr inbounds [1 x %struct.status_entry], [1 x %struct.status_entry]* %3, i64 0, i64 0
  %6 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %5, i32 0, i32 0
  %7 = load i32, i32* @GIT_STATUS_WT_RENAMED, align 4
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i8*
  store i8* %9, i8** %6, align 8
  %10 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %5, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %11 = getelementptr inbounds %struct.status_entry, %struct.status_entry* %5, i32 0, i32 2
  store i32 ptrtoint ([12 x i8]* @.str.1 to i32), i32* %11, align 8
  %12 = load i32, i32* @GIT_STATUS_OPT_INCLUDE_UNTRACKED, align 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %12
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @GIT_STATUS_OPT_RENAMES_INDEX_TO_WORKDIR, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %16
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @g_repo, align 4
  %21 = call i32 @rename_file(i32 %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @g_repo, align 4
  %23 = call i32 @git_status_list_new(i32** %1, i32 %22, %struct.TYPE_4__* %2)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = getelementptr inbounds [1 x %struct.status_entry], [1 x %struct.status_entry]* %3, i64 0, i64 0
  %27 = call i32 @check_status(i32* %25, %struct.status_entry* %26, i32 1)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @git_status_list_free(i32* %28)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @rename_file(i32, i8*, i8*) #2

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
