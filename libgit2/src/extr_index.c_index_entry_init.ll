; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_index_entry_init.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_index_entry_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.stat = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@.str = private unnamed_addr constant [84 x i8] c"could not initialize index entry. Index is not backed up by an existing repository.\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"create blob from file\00", align 1
@GIT_EBAREREPO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__**, %struct.TYPE_14__*, i8*)* @index_entry_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_entry_init(%struct.TYPE_13__** %0, %struct.TYPE_14__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__**, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_15__, align 4
  %11 = alloca %struct.stat, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_13__** %0, %struct.TYPE_13__*** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  %14 = bitcast %struct.TYPE_15__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.TYPE_15__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %16 = call i32* @INDEX_OWNER(%struct.TYPE_14__* %15)
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 @create_index_error(i32 -1, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %4, align 4
  br label %76

20:                                               ; preds = %3
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = call i32* @INDEX_OWNER(%struct.TYPE_14__* %21)
  store i32* %22, i32** %13, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = call i64 @git_repository__ensure_not_bare(i32* %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @GIT_EBAREREPO, align 4
  store i32 %27, i32* %4, align 4
  br label %76

28:                                               ; preds = %20
  %29 = load i32*, i32** %13, align 8
  %30 = call i32 @git_repository_workdir(i32* %29)
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @git_buf_joinpath(%struct.TYPE_15__* %10, i32 %30, i8* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %76

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @git_path_lstat(i32 %37, %struct.stat* %11)
  store i32 %38, i32* %8, align 4
  %39 = call i32 @git_buf_dispose(%struct.TYPE_15__* %10)
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %76

44:                                               ; preds = %35
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = call i32* @INDEX_OWNER(%struct.TYPE_14__* %45)
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @index_entry_create(%struct.TYPE_13__** %9, i32* %46, i8* %47, %struct.stat* %11, i32 1)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %76

51:                                               ; preds = %44
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = call i32* @INDEX_OWNER(%struct.TYPE_14__* %52)
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @git_blob__create_from_paths(i32* %12, %struct.stat* %11, i32* %53, i32* null, i8* %54, i32 0, i32 1)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %60 = call i32 @index_entry_free(%struct.TYPE_13__* %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %76

62:                                               ; preds = %51
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @git_index_entry__init_from_stat(%struct.TYPE_13__* %66, %struct.stat* %11, i32 %72)
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %75 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %5, align 8
  store %struct.TYPE_13__* %74, %struct.TYPE_13__** %75, align 8
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %62, %58, %50, %42, %34, %26, %18
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @INDEX_OWNER(%struct.TYPE_14__*) #2

declare dso_local i32 @create_index_error(i32, i8*) #2

declare dso_local i64 @git_repository__ensure_not_bare(i32*, i8*) #2

declare dso_local i64 @git_buf_joinpath(%struct.TYPE_15__*, i32, i8*) #2

declare dso_local i32 @git_repository_workdir(i32*) #2

declare dso_local i32 @git_path_lstat(i32, %struct.stat*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_15__*) #2

declare dso_local i64 @index_entry_create(%struct.TYPE_13__**, i32*, i8*, %struct.stat*, i32) #2

declare dso_local i32 @git_blob__create_from_paths(i32*, %struct.stat*, i32*, i32*, i8*, i32, i32) #2

declare dso_local i32 @index_entry_free(%struct.TYPE_13__*) #2

declare dso_local i32 @git_index_entry__init_from_stat(%struct.TYPE_13__*, %struct.stat*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
