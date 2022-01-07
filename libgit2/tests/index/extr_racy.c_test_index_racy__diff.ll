; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_racy.c_test_index_racy__diff.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_racy.c_test_index_racy__diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_racy__diff() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %5 = load i32, i32* @g_repo, align 4
  %6 = call i32 @git_repository_workdir(i32 %5)
  %7 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %3, i32 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @cl_git_mkfile(i32 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @g_repo, align 4
  %13 = call i32 @git_repository_index(i32** %1, i32 %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @git_index_add_bypath(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @git_index_write(i32* %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @g_repo, align 4
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %21, i32* %22, i32* null)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @git_diff_num_deltas(i32* %25)
  %27 = call i32 @cl_assert_equal_i(i32 0, i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @git_diff_free(i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cl_git_mkfile(i32 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @g_repo, align 4
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @git_diff_index_to_workdir(i32** %2, i32 %33, i32* %34, i32* null)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @git_diff_num_deltas(i32* %37)
  %39 = call i32 @cl_assert_equal_i(i32 1, i32 %38)
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @git_index_free(i32* %40)
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @git_diff_free(i32* %42)
  %44 = call i32 @git_buf_dispose(%struct.TYPE_5__* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_5__*, i32, i8*) #2

declare dso_local i32 @git_repository_workdir(i32) #2

declare dso_local i32 @cl_git_mkfile(i32, i8*) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32, i32*, i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_diff_num_deltas(i32*) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
