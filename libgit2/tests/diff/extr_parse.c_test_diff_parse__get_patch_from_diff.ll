; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_parse.c_test_diff_parse__get_patch_from_diff.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_parse.c_test_diff_parse__get_patch_from_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@GIT_BUF_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"diff\00", align 1
@GIT_DIFF_SHOW_BINARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"d70d245ed97ed2aa596dd1af6536e4bfdb047b69\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"7a9e0b02e63179929fed24f0a3e0f19168114d10\00", align 1
@GIT_DIFF_FORMAT_PATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_parse__get_patch_from_diff() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca %struct.TYPE_9__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 4, i1 false)
  %11 = bitcast %struct.TYPE_9__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.TYPE_9__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %12 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %1, align 8
  %13 = load i32, i32* @GIT_DIFF_SHOW_BINARY, align 4
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32*, i32** %1, align 8
  %16 = call i32* @resolve_commit_oid_to_tree(i32* %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32* %16, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32* @resolve_commit_oid_to_tree(i32* %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32* %21, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @cl_assert(i32 %23)
  %25 = load i32*, i32** %1, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @git_diff_tree_to_tree(i32** %2, i32* %25, i32* %26, i32* %27, %struct.TYPE_8__* %6)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* @GIT_DIFF_FORMAT_PATCH, align 4
  %32 = call i32 @git_diff_to_buf(%struct.TYPE_9__* %7, i32* %30, i32 %31)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @git_patch_from_diff(i32** %8, i32* %34, i32 0)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @git_diff_from_buffer(i32** %3, i32 %38, i32 %40)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @git_patch_from_diff(i32** %9, i32* %43, i32 0)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @git_patch_num_hunks(i32* %46)
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @git_patch_num_hunks(i32* %48)
  %50 = call i32 @cl_assert_equal_i(i32 %47, i32 %49)
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @git_patch_free(i32* %51)
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @git_patch_free(i32* %53)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @git_tree_free(i32* %55)
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @git_tree_free(i32* %57)
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @git_diff_free(i32* %59)
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @git_diff_free(i32* %61)
  %63 = call i32 @git_buf_dispose(%struct.TYPE_9__* %7)
  %64 = call i32 (...) @cl_git_sandbox_cleanup()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32* @resolve_commit_oid_to_tree(i32*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_tree_to_tree(i32**, i32*, i32*, i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @git_diff_to_buf(%struct.TYPE_9__*, i32*, i32) #2

declare dso_local i32 @git_patch_from_diff(i32**, i32*, i32) #2

declare dso_local i32 @git_diff_from_buffer(i32**, i32, i32) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_patch_num_hunks(i32*) #2

declare dso_local i32 @git_patch_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_9__*) #2

declare dso_local i32 @cl_git_sandbox_cleanup(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
