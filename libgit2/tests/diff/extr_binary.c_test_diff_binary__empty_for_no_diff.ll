; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_binary.c_test_diff_binary__empty_for_no_diff.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_binary.c_test_diff_binary__empty_for_no_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@GIT_BUF_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@GIT_DIFF_SHOW_BINARY = common dso_local global i32 0, align 4
@GIT_DIFF_FORCE_BINARY = common dso_local global i32 0, align 4
@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"renames\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"19dd32dfb1520a64e5bbaae8dce6ef423dfa2f13\00", align 1
@GIT_DIFF_FORMAT_PATCH = common dso_local global i32 0, align 4
@git_diff_print_callback__to_buf = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_binary__empty_for_no_diff() #0 {
  %1 = alloca %struct.TYPE_8__, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__, align 4
  %7 = bitcast %struct.TYPE_8__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_DIFF_OPTIONS_INIT to i8*), i64 8, i1 false)
  %8 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_9__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %9 = load i32, i32* @GIT_DIFF_SHOW_BINARY, align 4
  %10 = load i32, i32* @GIT_DIFF_FORCE_BINARY, align 4
  %11 = or i32 %9, %10
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* @repo, align 4
  %16 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @repo, align 4
  %19 = call i32 @git_commit_lookup(i32** %3, i32 %18, i32* %2)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @git_commit_tree(i32** %4, i32* %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32, i32* @repo, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @git_diff_tree_to_tree(i32** %5, i32 %24, i32* %25, i32* %26, %struct.TYPE_8__* %1)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @GIT_DIFF_FORMAT_PATCH, align 4
  %31 = load i32, i32* @git_diff_print_callback__to_buf, align 4
  %32 = call i32 @git_diff_print(i32* %29, i32 %30, i32 %31, %struct.TYPE_9__* %6)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = call i32 @git_buf_dispose(%struct.TYPE_9__* %6)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @git_diff_free(i32* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @git_commit_free(i32* %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @git_tree_free(i32* %42)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_commit_tree(i32**, i32*) #2

declare dso_local i32 @git_diff_tree_to_tree(i32**, i32, i32*, i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @git_diff_print(i32*, i32, i32, %struct.TYPE_9__*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_9__*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_commit_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
