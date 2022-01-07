; ModuleID = '/home/carl/AnghaBench/libgit2/tests/describe/extr_describe.c_test_describe_describe__describe_a_repo_with_no_refs.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/describe/extr_describe.c_test_describe_describe__describe_a_repo_with_no_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_DESCRIBE_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@delete_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_describe_describe__describe_a_repo_with_no_refs() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_DESCRIBE_OPTIONS_INIT to i8*), i64 4, i1 false)
  %7 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %7, i32* %3, align 4
  store i32* null, i32** %5, align 8
  %8 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %1, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @git_revparse_single(i32** %4, i32* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = load i32, i32* @delete_cb, align 4
  %14 = call i32 @git_reference_foreach(i32* %12, i32 %13, i32* null)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @git_describe_commit(i32** %5, i32* %16, %struct.TYPE_4__* %2)
  %18 = call i32 @cl_git_fail(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @git_describe_commit(i32** %5, i32* %20, %struct.TYPE_4__* %2)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @git_describe_result_free(i32* %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @git_object_free(i32* %25)
  %27 = call i32 @git_buf_dispose(i32* %3)
  %28 = call i32 (...) @cl_git_sandbox_cleanup()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_revparse_single(i32**, i32*, i8*) #2

declare dso_local i32 @git_reference_foreach(i32*, i32, i32*) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_describe_commit(i32**, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @git_describe_result_free(i32*) #2

declare dso_local i32 @git_object_free(i32*) #2

declare dso_local i32 @git_buf_dispose(i32*) #2

declare dso_local i32 @cl_git_sandbox_cleanup(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
