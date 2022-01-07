; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__symlink_changed_on_non_symlink_platform.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_workdir.c_test_diff_workdir__symlink_changed_on_non_symlink_platform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8**, i32 }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"7fccd7\00", align 1
@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@GIT_VECTOR_INIT = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"unsymlinked.git\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_CONFIGMAP_SYMLINKS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"include/Nu/Nu.h\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"symlink\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"symlink/include/Nu/Nu.h\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"../../objc/Nu.h\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"awesome content\0A\00", align 1
@diff_file_cb = common dso_local global i32 0, align 4
@diff_binary_cb = common dso_local global i32 0, align 4
@diff_hunk_cb = common dso_local global i32 0, align 4
@diff_line_cb = common dso_local global i32 0, align 4
@GIT_FILEMODE_LINK = common dso_local global i32 0, align 4
@GIT_RMDIR_REMOVE_FILES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_workdir__symlink_changed_on_non_symlink_platform() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_21__, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_19__, align 8
  %7 = alloca %struct.TYPE_18__, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %struct.TYPE_21__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %10 = bitcast %struct.TYPE_19__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.TYPE_19__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 16, i1 false)
  %11 = bitcast %struct.TYPE_18__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.TYPE_18__* @GIT_VECTOR_INIT to i8*), i64 16, i1 false)
  %12 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %12, i32* @g_repo, align 4
  %13 = load i32, i32* @g_repo, align 4
  %14 = load i32, i32* @GIT_CONFIGMAP_SYMLINKS, align 4
  %15 = call i32 @git_repository__configmap_lookup(i32* %8, i32 %13, i32 %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %0
  %20 = call i32 (...) @cl_skip()
  br label %21

21:                                               ; preds = %19, %0
  %22 = call i32 @git_vector_insert(%struct.TYPE_18__* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8**
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  store i8** %26, i8*** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = call i32 @p_mkdir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 511)
  %34 = call i32 @cl_must_pass(i32 %33)
  %35 = load i32, i32* @g_repo, align 4
  %36 = call i32 @git_repository_set_workdir(i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32, i32* @g_repo, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = call i32* @resolve_commit_oid_to_tree(i32 %38, i8* %39)
  store i32* %40, i32** %1, align 8
  %41 = icmp ne i32* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @cl_assert(i32 %42)
  %44 = call i32 @git_futils_mkpath2file(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 493)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %47 = load i32, i32* @g_repo, align 4
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @git_diff_tree_to_workdir(i32** %2, i32 %47, i32* %48, %struct.TYPE_19__* %6)
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @git_diff_num_deltas(i32* %51)
  %53 = call i32 @cl_assert_equal_i(i32 0, i32 %52)
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @git_diff_free(i32* %54)
  %56 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %57 = load i32, i32* @g_repo, align 4
  %58 = load i32*, i32** %1, align 8
  %59 = call i32 @git_diff_tree_to_workdir(i32** %2, i32 %57, i32* %58, %struct.TYPE_19__* %6)
  %60 = call i32 @cl_git_pass(i32 %59)
  %61 = load i32*, i32** %2, align 8
  %62 = load i32, i32* @diff_file_cb, align 4
  %63 = load i32, i32* @diff_binary_cb, align 4
  %64 = load i32, i32* @diff_hunk_cb, align 4
  %65 = load i32, i32* @diff_line_cb, align 4
  %66 = call i32 @git_diff_foreach(i32* %61, i32 %62, i32 %63, i32 %64, i32 %65, %struct.TYPE_21__* %3)
  %67 = call i32 @cl_git_pass(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %3, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @cl_assert_equal_i(i32 1, i32 %69)
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @git_diff_num_deltas(i32* %71)
  %73 = call i32 @cl_assert_equal_i(i32 1, i32 %72)
  %74 = load i32*, i32** %2, align 8
  %75 = call %struct.TYPE_20__* @git_diff_get_delta(i32* %74, i32 0)
  store %struct.TYPE_20__* %75, %struct.TYPE_20__** %4, align 8
  %76 = load i32, i32* @GIT_FILEMODE_LINK, align 4
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @cl_assert_equal_i(i32 %76, i32 %80)
  %82 = load i32, i32* @GIT_FILEMODE_LINK, align 4
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @cl_assert_equal_i(i32 %82, i32 %86)
  %88 = load i32*, i32** %2, align 8
  %89 = call i32 @git_diff_free(i32* %88)
  %90 = load i32, i32* @GIT_RMDIR_REMOVE_FILES, align 4
  %91 = call i32 @git_futils_rmdir_r(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %90)
  %92 = call i32 @cl_git_pass(i32 %91)
  %93 = load i32*, i32** %1, align 8
  %94 = call i32 @git_tree_free(i32* %93)
  %95 = call i32 @git_vector_free(%struct.TYPE_18__* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository__configmap_lookup(i32*, i32, i32) #2

declare dso_local i32 @cl_skip(...) #2

declare dso_local i32 @git_vector_insert(%struct.TYPE_18__*, i8*) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_mkdir(i8*, i32) #2

declare dso_local i32 @git_repository_set_workdir(i32, i8*, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32* @resolve_commit_oid_to_tree(i32, i8*) #2

declare dso_local i32 @git_futils_mkpath2file(i8*, i32) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @git_diff_tree_to_workdir(i32**, i32, i32*, %struct.TYPE_19__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_num_deltas(i32*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #2

declare dso_local i32 @git_diff_foreach(i32*, i32, i32, i32, i32, %struct.TYPE_21__*) #2

declare dso_local %struct.TYPE_20__* @git_diff_get_delta(i32*, i32) #2

declare dso_local i32 @git_futils_rmdir_r(i8*, i32*, i32) #2

declare dso_local i32 @git_tree_free(i32*) #2

declare dso_local i32 @git_vector_free(%struct.TYPE_18__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
