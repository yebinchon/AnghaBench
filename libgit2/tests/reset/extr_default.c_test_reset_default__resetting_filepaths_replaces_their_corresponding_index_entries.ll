; ModuleID = '/home/carl/AnghaBench/libgit2/tests/reset/extr_default.c_test_reset_default__resetting_filepaths_replaces_their_corresponding_index_entries.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/reset/extr_default.c_test_reset_default__resetting_filepaths_replaces_their_corresponding_index_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8**, i32 }
%struct.TYPE_6__ = type { i8**, i32 }

@.str = private unnamed_addr constant [15 x i8] c"staged_changes\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"staged_changes_file_deleted\00", align 1
@__const.test_reset_default__resetting_filepaths_replaces_their_corresponding_index_entries.paths = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [41 x i8] c"55d316c9ba708999f1918e9677d01dfcae69c6b9\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"a6be623522ce87a1d862128ac42672604f7b468b\00", align 1
@__const.test_reset_default__resetting_filepaths_replaces_their_corresponding_index_entries.before_shas = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [41 x i8] c"32504b727382542f9f089e24fddac5e78533e96c\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"061d42a44cacde5726057b67558821d95db96f19\00", align 1
@__const.test_reset_default__resetting_filepaths_replaces_their_corresponding_index_entries.after_shas = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str.6 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@_pathspecs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@_target = common dso_local global i32 0, align 4
@_repo = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"0017bd4\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_reset_default__resetting_filepaths_replaces_their_corresponding_index_entries() #0 {
  %1 = alloca %struct.TYPE_6__, align 8
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = alloca [2 x i8*], align 16
  %4 = alloca [2 x i8*], align 16
  %5 = alloca [2 x i8*], align 16
  %6 = bitcast [2 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([2 x i8*]* @__const.test_reset_default__resetting_filepaths_replaces_their_corresponding_index_entries.paths to i8*), i64 16, i1 false)
  %7 = bitcast [2 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([2 x i8*]* @__const.test_reset_default__resetting_filepaths_replaces_their_corresponding_index_entries.before_shas to i8*), i64 16, i1 false)
  %8 = bitcast [2 x i8*]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([2 x i8*]* @__const.test_reset_default__resetting_filepaths_replaces_their_corresponding_index_entries.after_shas to i8*), i64 16, i1 false)
  %9 = call i32 @initialize(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %10 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  store i8** %10, i8*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_pathspecs, i32 0, i32 0), align 8
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_pathspecs, i32 0, i32 1), align 8
  %11 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i8** %11, i8*** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  store i32 2, i32* %13, align 8
  %14 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i8** %14, i8*** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  store i32 2, i32* %16, align 8
  %17 = load i32, i32* @_repo, align 4
  %18 = call i32 @git_revparse_single(i32* @_target, i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = call i32 @assert_content_in_index(%struct.TYPE_7__* @_pathspecs, i32 1, %struct.TYPE_6__* %1)
  %21 = load i32, i32* @_repo, align 4
  %22 = load i32, i32* @_target, align 4
  %23 = call i32 @git_reset_default(i32 %21, i32 %22, %struct.TYPE_7__* @_pathspecs)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = call i32 @assert_content_in_index(%struct.TYPE_7__* @_pathspecs, i32 1, %struct.TYPE_6__* %2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @initialize(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_revparse_single(i32*, i32, i8*) #2

declare dso_local i32 @assert_content_in_index(%struct.TYPE_7__*, i32, %struct.TYPE_6__*) #2

declare dso_local i32 @git_reset_default(i32, i32, %struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
