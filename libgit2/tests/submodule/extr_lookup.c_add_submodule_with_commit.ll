; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_lookup.c_add_submodule_with_commit.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_lookup.c_add_submodule_with_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"https://github.com/libgit2/libgit2.git\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"new file\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"initial commit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @add_submodule_with_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_submodule_with_commit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__, align 4
  store i8* %0, i8** %2, align 8
  %7 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %8 = load i32, i32* @g_repo, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @git_submodule_add_setup(i32** %3, i32 %8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %9, i32 1)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @g_repo, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @assert_submodule_exists(i32 %12, i8* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @git_submodule_open(i32** %4, i32* %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @git_repository_index(i32** %5, i32* %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @git_repository_workdir(i32* %21)
  %23 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %6, i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cl_git_mkfile(i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i32 @git_buf_dispose(%struct.TYPE_5__* %6)
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @git_index_add_bypath(i32* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @git_index_write(i32* %32)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @git_index_free(i32* %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @cl_repo_commit_from_index(i32* null, i32* %37, i32* null, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @git_repository_free(i32* %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @git_submodule_add_finalize(i32* %41)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @git_submodule_free(i32* %44)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_submodule_add_setup(i32**, i32, i8*, i8*, i32) #2

declare dso_local i32 @assert_submodule_exists(i32, i8*) #2

declare dso_local i32 @git_submodule_open(i32**, i32*) #2

declare dso_local i32 @git_repository_index(i32**, i32*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_5__*, i32, i8*) #2

declare dso_local i32 @git_repository_workdir(i32*) #2

declare dso_local i32 @cl_git_mkfile(i32, i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @cl_repo_commit_from_index(i32*, i32*, i32*, i32, i8*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @git_submodule_add_finalize(i32*) #2

declare dso_local i32 @git_submodule_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
