; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_racy.c_setup_race.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_racy.c_setup_race.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.stat = type { i64, i64 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_race to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_race() #0 {
  %1 = alloca %struct.TYPE_10__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.stat, align 8
  %5 = bitcast %struct.TYPE_10__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @git_repository_index__weakptr(i32** %2, i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @git_index_write(i32* %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @g_repo, align 4
  %13 = call i32 @git_repository_workdir(i32 %12)
  %14 = call i32 @git_buf_joinpath(%struct.TYPE_10__* %1, i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cl_git_mkfile(i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @git_index_add_bypath(i32* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cl_git_mkfile(i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @git_index_write(i32* %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cl_git_mkfile(i32 %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @p_stat(i32 %32, %struct.stat* %4)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32*, i32** %2, align 8
  %36 = call i64 @git_index_get_bypath(i32* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0)
  %37 = inttoptr i64 %36 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %3, align 8
  %38 = call i32 @cl_assert(%struct.TYPE_9__* %37)
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i8* %41, i8** %44, align 8
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  %51 = call i32 @git_buf_dispose(%struct.TYPE_10__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index__weakptr(i32**, i32) #2

declare dso_local i32 @git_index_write(i32*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_10__*, i32, i8*) #2

declare dso_local i32 @git_repository_workdir(i32) #2

declare dso_local i32 @cl_git_mkfile(i32, i8*) #2

declare dso_local i32 @git_index_add_bypath(i32*, i8*) #2

declare dso_local i32 @p_stat(i32, %struct.stat*) #2

declare dso_local i32 @cl_assert(%struct.TYPE_9__*) #2

declare dso_local i64 @git_index_get_bypath(i32*, i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
