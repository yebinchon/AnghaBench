; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_template.c_validate_templates.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_template.c_validate_templates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"core.filemode\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"hooks/update.sample\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"hooks/link.sample\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"hooks/.dotfile\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @validate_templates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_templates(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = bitcast %struct.TYPE_7__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %10 = bitcast %struct.TYPE_7__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %11 = bitcast %struct.TYPE_7__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @git_buf_joinpath(%struct.TYPE_7__* %5, i8* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @git_futils_readbuffer(%struct.TYPE_7__* %6, i32 %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = call i32 @git_buf_clear(%struct.TYPE_7__* %5)
  %20 = load i32*, i32** %3, align 8
  %21 = call i8* @git_repository_path(i32* %20)
  %22 = call i32 @git_buf_joinpath(%struct.TYPE_7__* %5, i8* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @git_futils_readbuffer(%struct.TYPE_7__* %7, i32 %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cl_assert_equal_s(i32 %29, i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @cl_repo_get_bool(i32* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %34, i32* %8, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = call i8* @git_repository_path(i32* %36)
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @assert_hooks_match(i8* %35, i8* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i8*, i8** %4, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = call i8* @git_repository_path(i32* %41)
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @assert_hooks_match(i8* %40, i8* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load i8*, i8** %4, align 8
  %46 = load i32*, i32** %3, align 8
  %47 = call i8* @git_repository_path(i32* %46)
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @assert_hooks_match(i8* %45, i8* %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = call i32 @git_buf_dispose(%struct.TYPE_7__* %6)
  %51 = call i32 @git_buf_dispose(%struct.TYPE_7__* %7)
  %52 = call i32 @git_buf_dispose(%struct.TYPE_7__* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_7__*, i8*, i8*) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_7__*) #2

declare dso_local i8* @git_repository_path(i32*) #2

declare dso_local i32 @cl_assert_equal_s(i32, i32) #2

declare dso_local i32 @cl_repo_get_bool(i32*, i8*) #2

declare dso_local i32 @assert_hooks_match(i8*, i8*, i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
