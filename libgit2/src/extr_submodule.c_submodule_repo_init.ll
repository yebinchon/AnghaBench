; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_submodule_repo_init.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_submodule_repo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i8*, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@GIT_REPOSITORY_INIT_OPTIONS_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@GIT_REPOSITORY_INIT_MKPATH = common dso_local global i32 0, align 4
@GIT_REPOSITORY_INIT_NO_REINIT = common dso_local global i32 0, align 4
@GIT_REPOSITORY_ITEM_MODULES = common dso_local global i32 0, align 4
@GIT_REPOSITORY_INIT_NO_DOTGIT_DIR = common dso_local global i32 0, align 4
@GIT_REPOSITORY_INIT_RELATIVE_GITLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i8*, i8*, i32)* @submodule_repo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submodule_repo_init(i32** %0, i32* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__, align 4
  %13 = alloca %struct.TYPE_10__, align 4
  %14 = alloca %struct.TYPE_9__, align 8
  %15 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = bitcast %struct.TYPE_10__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %17 = bitcast %struct.TYPE_10__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %18 = bitcast %struct.TYPE_9__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.TYPE_9__* @GIT_REPOSITORY_INIT_OPTIONS_INIT to i8*), i64 24, i1 false)
  store i32* null, i32** %15, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @git_repository_workdir(i32* %19)
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @git_buf_joinpath(%struct.TYPE_10__* %12, i32 %20, i8* %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  br label %68

26:                                               ; preds = %5
  %27 = load i32, i32* @GIT_REPOSITORY_INIT_MKPATH, align 4
  %28 = load i32, i32* @GIT_REPOSITORY_INIT_NO_REINIT, align 4
  %29 = or i32 %27, %28
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  store i8* %31, i8** %32, align 8
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %26
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* @GIT_REPOSITORY_ITEM_MODULES, align 4
  %38 = call i32 @git_repository_item_path(%struct.TYPE_10__* %13, i32* %36, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %68

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @git_buf_joinpath(%struct.TYPE_10__* %13, i32 %44, i8* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %68

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  store i32 %52, i32* %53, align 8
  %54 = load i32, i32* @GIT_REPOSITORY_INIT_NO_DOTGIT_DIR, align 4
  %55 = load i32, i32* @GIT_REPOSITORY_INIT_RELATIVE_GITLINK, align 4
  %56 = or i32 %54, %55
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @git_repository_init_ext(i32** %15, i32 %61, %struct.TYPE_9__* %14)
  store i32 %62, i32* %11, align 4
  br label %67

63:                                               ; preds = %26
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @git_repository_init_ext(i32** %15, i32 %65, %struct.TYPE_9__* %14)
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %63, %50
  br label %68

68:                                               ; preds = %67, %49, %41, %25
  %69 = call i32 @git_buf_dispose(%struct.TYPE_10__* %12)
  %70 = call i32 @git_buf_dispose(%struct.TYPE_10__* %13)
  %71 = load i32*, i32** %15, align 8
  %72 = load i32**, i32*** %6, align 8
  store i32* %71, i32** %72, align 8
  %73 = load i32, i32* %11, align 4
  ret i32 %73
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
