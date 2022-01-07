; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_index.c_populate_symlink_workdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_index.c_populate_symlink_workdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"symlink.git\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"symlink\00", align 1
@GIT_REMOTE_ORIGIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"remotes/origin/master\00", align 1
@GIT_RESET_HARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @populate_symlink_workdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @populate_symlink_workdir() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %7 = load i32, i32* @g_repo, align 4
  %8 = call i8* @git_repository_path(i32 %7)
  store i8* %8, i8** %5, align 8
  %9 = call i32 (...) @clar_sandbox_path()
  %10 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %1, i32 %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @git_repository_init(i32** %2, i32 %13, i32 1)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @git_repository_set_workdir(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @GIT_REMOTE_ORIGIN, align 4
  %21 = call i32 @git_remote_delete(i32* %19, i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @GIT_REMOTE_ORIGIN, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @git_remote_create(i32** %3, i32* %22, i32 %23, i8* %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @git_remote_fetch(i32* %27, i32* null, i32* null, i32* null)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @git_remote_free(i32* %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @git_revparse_single(i32** %4, i32* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @GIT_RESET_HARD, align 4
  %38 = call i32 @git_reset(i32* %35, i32* %36, i32 %37, i32* null)
  %39 = call i32 @cl_git_pass(i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @git_object_free(i32* %40)
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @git_repository_free(i32* %42)
  %44 = call i32 @git_buf_dispose(%struct.TYPE_5__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @git_repository_path(i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_5__*, i32, i8*) #2

declare dso_local i32 @clar_sandbox_path(...) #2

declare dso_local i32 @git_repository_init(i32**, i32, i32) #2

declare dso_local i32 @git_repository_set_workdir(i32*, i8*, i32) #2

declare dso_local i32 @git_remote_delete(i32*, i32) #2

declare dso_local i32 @git_remote_create(i32**, i32*, i32, i8*) #2

declare dso_local i32 @git_remote_fetch(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @git_remote_free(i32*) #2

declare dso_local i32 @git_revparse_single(i32**, i32*, i8*) #2

declare dso_local i32 @git_reset(i32*, i32*, i32, i32*) #2

declare dso_local i32 @git_object_free(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
