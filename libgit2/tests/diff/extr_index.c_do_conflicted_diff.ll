; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_index.c_do_conflicted_diff.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_index.c_do_conflicted_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.TYPE_10__ = type { i8*, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"26a125ee1bf\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"staged_changes\00", align 1
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"d427e0b2e138501a3d15cc376077a3631e15bd46\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"ee3fa1b8c00aff7fe02065fdb50864bb0d932ccf\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"2bd0a343aeef7a2cf0d158478966a6e587ff3863\00", align 1
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @do_conflicted_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_conflicted_diff(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %13 = load i32, i32* @g_repo, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32* @resolve_commit_oid_to_tree(i32 %13, i8* %14)
  store i32* %15, i32** %6, align 8
  %16 = bitcast %struct.TYPE_11__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.TYPE_11__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 16, i1 false)
  %17 = bitcast %struct.TYPE_10__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 24, i1 false)
  %18 = bitcast %struct.TYPE_10__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 24, i1 false)
  %19 = bitcast %struct.TYPE_10__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 24, i1 false)
  store i32* null, i32** %11, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @cl_assert(i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = or i64 %26, %24
  store i64 %27, i64* %25, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @memset(i32* %28, i32 0, i32 4)
  %30 = load i32, i32* @g_repo, align 4
  %31 = call i32 @git_repository_index(i32** %12, i32 %30)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %35, align 8
  %36 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  store i32 %36, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %41 = call i32 @git_oid_fromstr(i32* %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %43 = call i32 @git_oid_fromstr(i32* %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %45 = call i32 @git_oid_fromstr(i32* %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 @git_index_conflict_add(i32* %46, %struct.TYPE_10__* %8, %struct.TYPE_10__* %9, %struct.TYPE_10__* %10)
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = load i32, i32* @g_repo, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @git_diff_tree_to_index(i32** %11, i32 %49, i32* %50, i32* %51, %struct.TYPE_11__* %7)
  %53 = call i32 @cl_git_pass(i32 %52)
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* @diff_file_cb, align 4
  %56 = load i32, i32* @diff_binary_cb, align 4
  %57 = load i32, i32* @diff_hunk_cb, align 4
  %58 = load i32, i32* @diff_line_cb, align 4
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @git_diff_foreach(i32* %54, i32 %55, i32 %56, i32 %57, i32 %58, i32* %59)
  %61 = call i32 @cl_git_pass(i32 %60)
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @git_diff_free(i32* %62)
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @git_tree_free(i32* %64)
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @git_index_free(i32* %66)
  ret void
}

declare dso_local i32* @resolve_commit_oid_to_tree(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @cl_assert(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index(i32**, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_index_conflict_add(i32*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @git_diff_tree_to_index(i32**, i32, i32*, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @git_diff_foreach(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @git_diff_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
