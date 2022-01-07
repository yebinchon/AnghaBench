; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__patch.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_test_diff_rename__patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64 }

@COPY_RENAME_COMMIT = common dso_local global i8* null, align 8
@REWRITE_COPY_COMMIT = common dso_local global i8* null, align 8
@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@GIT_DIFF_FIND_OPTIONS_INIT = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@GIT_BUF_INIT = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@.str = private unnamed_addr constant [477 x i8] c"diff --git a/sixserving.txt b/ikeepsix.txt\0Aindex ad0a8e5..36020db 100644\0A--- a/sixserving.txt\0A+++ b/ikeepsix.txt\0A@@ -1,3 +1,6 @@\0A+I Keep Six Honest Serving-Men\0A+=============================\0A+\0A I KEEP six honest serving-men\0A  (They taught me all I knew);\0A Their names are What and Why and When\0A@@ -21,4 +24,4 @@ She sends'em abroad on her own affairs,\0A One million Hows, two million Wheres,\0A And seven million Whys!\0A \0A-                -- Rudyard Kipling\0A+  -- Rudyard Kipling\0A\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_DIFF_INCLUDE_UNMODIFIED = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_RENAMES = common dso_local global i32 0, align 4
@GIT_DIFF_FIND_COPIES = common dso_local global i32 0, align 4
@GIT_DELTA_COPIED = common dso_local global i32 0, align 4
@GIT_DELTA_UNMODIFIED = common dso_local global i32 0, align 4
@GIT_DELTA_MODIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_rename__patch() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__, align 4
  %7 = alloca %struct.TYPE_15__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__, align 4
  %11 = alloca i8*, align 8
  %12 = load i8*, i8** @COPY_RENAME_COMMIT, align 8
  store i8* %12, i8** %1, align 8
  %13 = load i8*, i8** @REWRITE_COPY_COMMIT, align 8
  store i8* %13, i8** %2, align 8
  %14 = bitcast %struct.TYPE_14__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.TYPE_14__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 4, i1 false)
  %15 = bitcast %struct.TYPE_15__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.TYPE_15__* @GIT_DIFF_FIND_OPTIONS_INIT to i8*), i64 4, i1 false)
  %16 = bitcast %struct.TYPE_17__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.TYPE_17__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i8* getelementptr inbounds ([477 x i8], [477 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %17 = load i32, i32* @g_repo, align 4
  %18 = load i8*, i8** %1, align 8
  %19 = call i32* @resolve_commit_oid_to_tree(i32 %17, i8* %18)
  store i32* %19, i32** %3, align 8
  %20 = load i32, i32* @g_repo, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = call i32* @resolve_commit_oid_to_tree(i32 %20, i8* %21)
  store i32* %22, i32** %4, align 8
  %23 = load i32, i32* @GIT_DIFF_INCLUDE_UNMODIFIED, align 4
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @g_repo, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @git_diff_tree_to_tree(i32** %5, i32 %27, i32* %28, i32* %29, %struct.TYPE_14__* %6)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32, i32* @GIT_DIFF_FIND_RENAMES, align 4
  %33 = load i32, i32* @GIT_DIFF_FIND_COPIES, align 4
  %34 = or i32 %32, %33
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @git_diff_find_similar(i32* %36, %struct.TYPE_15__* %7)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = call i64 @git_diff_num_deltas(i32* %39)
  %41 = trunc i64 %40 to i32
  %42 = call i32 @cl_assert_equal_i(i32 4, i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @git_patch_from_diff(i32** %8, i32* %43, i32 0)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = call %struct.TYPE_16__* @git_patch_get_delta(i32* %46)
  store %struct.TYPE_16__* %47, %struct.TYPE_16__** %9, align 8
  %48 = icmp ne %struct.TYPE_16__* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @cl_assert(i32 %49)
  %51 = load i32, i32* @GIT_DELTA_COPIED, align 4
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @cl_assert_equal_i(i32 %51, i32 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @git_patch_to_buf(%struct.TYPE_17__* %10, i32* %57)
  %59 = call i32 @cl_git_pass(i32 %58)
  %60 = load i8*, i8** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @cl_assert_equal_s(i8* %60, i32 %62)
  %64 = call i32 @git_buf_dispose(%struct.TYPE_17__* %10)
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @git_patch_free(i32* %65)
  %67 = load i32*, i32** %5, align 8
  %68 = call %struct.TYPE_16__* @git_diff_get_delta(i32* %67, i32 1)
  store %struct.TYPE_16__* %68, %struct.TYPE_16__** %9, align 8
  %69 = icmp ne %struct.TYPE_16__* %68, null
  %70 = zext i1 %69 to i32
  %71 = call i32 @cl_assert(i32 %70)
  %72 = load i32, i32* @GIT_DELTA_UNMODIFIED, align 4
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @cl_assert_equal_i(i32 %72, i32 %76)
  %78 = load i32*, i32** %5, align 8
  %79 = call %struct.TYPE_16__* @git_diff_get_delta(i32* %78, i32 2)
  store %struct.TYPE_16__* %79, %struct.TYPE_16__** %9, align 8
  %80 = icmp ne %struct.TYPE_16__* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i32 @cl_assert(i32 %81)
  %83 = load i32, i32* @GIT_DELTA_MODIFIED, align 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @cl_assert_equal_i(i32 %83, i32 %87)
  %89 = load i32*, i32** %5, align 8
  %90 = call %struct.TYPE_16__* @git_diff_get_delta(i32* %89, i32 3)
  store %struct.TYPE_16__* %90, %struct.TYPE_16__** %9, align 8
  %91 = icmp ne %struct.TYPE_16__* %90, null
  %92 = zext i1 %91 to i32
  %93 = call i32 @cl_assert(i32 %92)
  %94 = load i32, i32* @GIT_DELTA_MODIFIED, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @cl_assert_equal_i(i32 %94, i32 %98)
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @git_diff_free(i32* %100)
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @git_tree_free(i32* %102)
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 @git_tree_free(i32* %104)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @resolve_commit_oid_to_tree(i32, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_tree_to_tree(i32**, i32, i32*, i32*, %struct.TYPE_14__*) #2

declare dso_local i32 @git_diff_find_similar(i32*, %struct.TYPE_15__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i64 @git_diff_num_deltas(i32*) #2

declare dso_local i32 @git_patch_from_diff(i32**, i32*, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local %struct.TYPE_16__* @git_patch_get_delta(i32*) #2

declare dso_local i32 @git_patch_to_buf(%struct.TYPE_17__*, i32*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_17__*) #2

declare dso_local i32 @git_patch_free(i32*) #2

declare dso_local %struct.TYPE_16__* @git_diff_get_delta(i32*, i32) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
