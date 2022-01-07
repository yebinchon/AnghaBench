; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_open.c_assert_sm_valid.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_open.c_assert_sm_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*)* @assert_sm_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_sm_valid(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = bitcast %struct.TYPE_8__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %10 = bitcast %struct.TYPE_8__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @git_repository_workdir(i32* %11)
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @git_buf_joinpath(%struct.TYPE_8__* %7, i32 %12, i8* %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @git_path_prettify_dir(%struct.TYPE_8__* %7, i32 %17, i32* null)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @git_repository_workdir(i32* %20)
  %22 = call i32 @git_buf_sets(%struct.TYPE_8__* %8, i32 %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @git_path_prettify_dir(%struct.TYPE_8__* %8, i32 %25, i32* null)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cl_assert_equal_s(i32 %29, i32 %31)
  %33 = call i32 @git_buf_clear(%struct.TYPE_8__* %7)
  %34 = call i32 @git_buf_clear(%struct.TYPE_8__* %8)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @git_repository_commondir(i32* %35)
  %37 = call i32 @git_buf_joinpath(%struct.TYPE_8__* %7, i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @git_buf_joinpath(%struct.TYPE_8__* %7, i32 %40, i8* %41)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @git_path_prettify_dir(%struct.TYPE_8__* %7, i32 %45, i32* null)
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @git_repository_commondir(i32* %48)
  %50 = call i32 @git_buf_sets(%struct.TYPE_8__* %8, i32 %49)
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @git_path_prettify_dir(%struct.TYPE_8__* %8, i32 %53, i32* null)
  %55 = call i32 @cl_git_pass(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @cl_assert_equal_s(i32 %57, i32 %59)
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @git_repository_path(i32* %61)
  %63 = call i32 @git_buf_sets(%struct.TYPE_8__* %8, i32 %62)
  %64 = call i32 @cl_git_pass(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @git_path_prettify_dir(%struct.TYPE_8__* %8, i32 %66, i32* null)
  %68 = call i32 @cl_git_pass(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cl_assert_equal_s(i32 %70, i32 %72)
  %74 = call i32 @git_buf_dispose(%struct.TYPE_8__* %7)
  %75 = call i32 @git_buf_dispose(%struct.TYPE_8__* %8)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_8__*, i32, i8*) #2

declare dso_local i32 @git_repository_workdir(i32*) #2

declare dso_local i32 @git_path_prettify_dir(%struct.TYPE_8__*, i32, i32*) #2

declare dso_local i32 @git_buf_sets(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @cl_assert_equal_s(i32, i32) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_8__*) #2

declare dso_local i32 @git_repository_commondir(i32*) #2

declare dso_local i32 @git_repository_path(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
