; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_add_repo_as_submodule.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_add_repo_as_submodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.stat = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to stat repository dir\00", align 1
@GIT_FILEMODE_COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__**, %struct.TYPE_13__*, i8*)* @add_repo_as_submodule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_repo_as_submodule(%struct.TYPE_12__** %0, %struct.TYPE_13__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__**, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.stat, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_12__** %0, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = bitcast %struct.TYPE_14__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.TYPE_14__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = call i32* @INDEX_OWNER(%struct.TYPE_13__* %16)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = call i32 @git_repository_workdir(i32* %18)
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @git_buf_joinpath(%struct.TYPE_14__* %9, i32 %19, i8* %20)
  store i32 %21, i32* %14, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %4, align 4
  br label %77

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @p_stat(i32 %27, %struct.stat* %13)
  store i32 %28, i32* %14, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @GIT_ERROR_OS, align 4
  %32 = call i32 @git_error_set(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %77

33:                                               ; preds = %25
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = call i32* @INDEX_OWNER(%struct.TYPE_13__* %34)
  %36 = load i8*, i8** %7, align 8
  %37 = call i64 @index_entry_create(%struct.TYPE_12__** %12, i32* %35, i8* %36, %struct.stat* %13, i32 1)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %77

40:                                               ; preds = %33
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @git_index_entry__init_from_stat(%struct.TYPE_12__* %41, %struct.stat* %13, i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @git_repository_open(i32** %8, i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %4, align 4
  br label %77

55:                                               ; preds = %40
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @git_repository_head(i32** %11, i32* %56)
  store i32 %57, i32* %14, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %4, align 4
  br label %77

61:                                               ; preds = %55
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @git_reference_target(i32* %64)
  %66 = call i32 @git_oid_cpy(i32* %63, i32 %65)
  %67 = load i32, i32* @GIT_FILEMODE_COMMIT, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @git_reference_free(i32* %70)
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @git_repository_free(i32* %72)
  %74 = call i32 @git_buf_dispose(%struct.TYPE_14__* %9)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %76 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* %75, %struct.TYPE_12__** %76, align 8
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %61, %59, %53, %39, %30, %23
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @INDEX_OWNER(%struct.TYPE_13__*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_14__*, i32, i8*) #2

declare dso_local i32 @git_repository_workdir(i32*) #2

declare dso_local i32 @p_stat(i32, %struct.stat*) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

declare dso_local i64 @index_entry_create(%struct.TYPE_12__**, i32*, i8*, %struct.stat*, i32) #2

declare dso_local i32 @git_index_entry__init_from_stat(%struct.TYPE_12__*, %struct.stat*, i32) #2

declare dso_local i32 @git_repository_open(i32**, i32) #2

declare dso_local i32 @git_repository_head(i32**, i32*) #2

declare dso_local i32 @git_oid_cpy(i32*, i32) #2

declare dso_local i32 @git_reference_target(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
