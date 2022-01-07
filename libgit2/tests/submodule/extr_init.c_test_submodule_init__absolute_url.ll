; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_init.c_test_submodule_init__absolute_url.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_init.c_test_submodule_init__absolute_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"testrepo\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"submodule.testrepo.url\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_init__absolute_url() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca i8*, align 8
  %5 = bitcast %struct.TYPE_6__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %6 = call i32 (...) @setup_fixture_submodule_simple()
  store i32 %6, i32* @g_repo, align 4
  %7 = load i32, i32* @g_repo, align 4
  %8 = call i32 @git_repository_workdir(i32 %7)
  %9 = call i64 @git_path_dirname_r(%struct.TYPE_6__* %3, i32 %8)
  %10 = icmp sgt i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @cl_assert(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @git_buf_joinpath(%struct.TYPE_6__* %3, i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* @g_repo, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @git_submodule_set_url(i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @g_repo, align 4
  %23 = call i32 @git_submodule_lookup(i32** %1, i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %1, align 8
  %28 = call i8* @git_submodule_url(i32* %27)
  %29 = call i32 @cl_assert_equal_s(i32 %26, i8* %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @git_submodule_init(i32* %30, i32 0)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32, i32* @g_repo, align 4
  %34 = call i32 @git_repository_config_snapshot(i32** %2, i32 %33)
  %35 = call i32 @cl_git_pass(i32 %34)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @git_config_get_string(i8** %4, i32* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @cl_assert_equal_s(i32 %40, i8* %41)
  %43 = call i32 @git_buf_dispose(%struct.TYPE_6__* %3)
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @git_config_free(i32* %44)
  %46 = load i32*, i32** %1, align 8
  %47 = call i32 @git_submodule_free(i32* %46)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setup_fixture_submodule_simple(...) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i64 @git_path_dirname_r(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @git_repository_workdir(i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_6__*, i32, i8*) #2

declare dso_local i32 @git_submodule_set_url(i32, i8*, i32) #2

declare dso_local i32 @git_submodule_lookup(i32**, i32, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #2

declare dso_local i8* @git_submodule_url(i32*) #2

declare dso_local i32 @git_submodule_init(i32*, i32) #2

declare dso_local i32 @git_repository_config_snapshot(i32**, i32) #2

declare dso_local i32 @git_config_get_string(i8**, i32*, i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_6__*) #2

declare dso_local i32 @git_config_free(i32*) #2

declare dso_local i32 @git_submodule_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
