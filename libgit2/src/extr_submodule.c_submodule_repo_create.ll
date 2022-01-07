; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_submodule_repo_create.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_submodule_repo_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@GIT_REPOSITORY_INIT_OPTIONS_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@GIT_REPOSITORY_INIT_MKPATH = common dso_local global i32 0, align 4
@GIT_REPOSITORY_INIT_NO_REINIT = common dso_local global i32 0, align 4
@GIT_REPOSITORY_INIT_NO_DOTGIT_DIR = common dso_local global i32 0, align 4
@GIT_REPOSITORY_INIT_RELATIVE_GITLINK = common dso_local global i32 0, align 4
@GIT_REPOSITORY_ITEM_MODULES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i8*)* @submodule_repo_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submodule_repo_create(i32** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__, align 4
  %9 = alloca %struct.TYPE_10__, align 4
  %10 = alloca %struct.TYPE_9__, align 4
  %11 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = bitcast %struct.TYPE_10__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %13 = bitcast %struct.TYPE_10__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %14 = bitcast %struct.TYPE_9__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.TYPE_9__* @GIT_REPOSITORY_INIT_OPTIONS_INIT to i8*), i64 8, i1 false)
  store i32* null, i32** %11, align 8
  %15 = load i32, i32* @GIT_REPOSITORY_INIT_MKPATH, align 4
  %16 = load i32, i32* @GIT_REPOSITORY_INIT_NO_REINIT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @GIT_REPOSITORY_INIT_NO_DOTGIT_DIR, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @GIT_REPOSITORY_INIT_RELATIVE_GITLINK, align 4
  %21 = or i32 %19, %20
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @git_repository_workdir(i32* %23)
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @git_buf_joinpath(%struct.TYPE_10__* %8, i32 %24, i8* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %52

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @GIT_REPOSITORY_ITEM_MODULES, align 4
  %36 = call i32 @git_repository_item_path(%struct.TYPE_10__* %9, i32* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %52

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @git_buf_joinpath(%struct.TYPE_10__* %9, i32 %42, i8* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %52

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @git_repository_init_ext(i32** %11, i32 %50, %struct.TYPE_9__* %10)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %48, %47, %39, %29
  %53 = call i32 @git_buf_dispose(%struct.TYPE_10__* %8)
  %54 = call i32 @git_buf_dispose(%struct.TYPE_10__* %9)
  %55 = load i32*, i32** %11, align 8
  %56 = load i32**, i32*** %4, align 8
  store i32* %55, i32** %56, align 8
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_10__*, i32, i8*) #2

declare dso_local i32 @git_repository_workdir(i32*) #2

declare dso_local i32 @git_repository_item_path(%struct.TYPE_10__*, i32*, i32) #2

declare dso_local i32 @git_repository_init_ext(i32**, i32, %struct.TYPE_9__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
