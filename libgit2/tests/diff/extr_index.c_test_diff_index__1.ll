; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_index.c_test_diff_index__1.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_index.c_test_diff_index__1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"26a125ee1bf\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"0017bd4ab1ec3\00", align 1
@g_repo = common dso_local global i32 0, align 4
@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@diff_stop_after_2_files = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_index__1() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %8 = load i32, i32* @g_repo, align 4
  %9 = load i8*, i8** %1, align 8
  %10 = call i32* @resolve_commit_oid_to_tree(i32 %8, i8* %9)
  store i32* %10, i32** %3, align 8
  %11 = load i32, i32* @g_repo, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = call i32* @resolve_commit_oid_to_tree(i32 %11, i8* %12)
  store i32* %13, i32** %4, align 8
  %14 = bitcast %struct.TYPE_7__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 8, i1 false)
  store i32* null, i32** %6, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @cl_assert(i32* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @cl_assert(i32* %17)
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = call i32 @memset(%struct.TYPE_8__* %7, i32 0, i32 4)
  %22 = load i32, i32* @g_repo, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @git_diff_tree_to_index(i32** %6, i32 %22, i32* %23, i32* null, %struct.TYPE_7__* %5)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @diff_stop_after_2_files, align 4
  %28 = call i32 @git_diff_foreach(i32* %26, i32 %27, i32* null, i32* null, i32* null, %struct.TYPE_8__* %7)
  %29 = call i32 @cl_assert_equal_i(i32 1, i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cl_assert_equal_i(i32 2, i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @git_diff_free(i32* %33)
  store i32* null, i32** %6, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @git_tree_free(i32* %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @git_tree_free(i32* %37)
  ret void
}

declare dso_local i32* @resolve_commit_oid_to_tree(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cl_assert(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_diff_tree_to_index(i32**, i32, i32*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_diff_foreach(i32*, i32, i32*, i32*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @git_diff_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
