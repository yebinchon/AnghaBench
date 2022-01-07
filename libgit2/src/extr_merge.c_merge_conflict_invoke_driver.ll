; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_conflict_invoke_driver.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_conflict_invoke_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_21__*, i8*, i8*, i32 }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_19__*, i8**, i8**, %struct.TYPE_22__*, i8*, %struct.TYPE_18__*)* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__**, i8*, %struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_18__*)* @merge_conflict_invoke_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_conflict_invoke_driver(%struct.TYPE_21__** %0, i8* %1, %struct.TYPE_19__* %2, %struct.TYPE_20__* %3, %struct.TYPE_18__* %4) #0 {
  %6 = alloca %struct.TYPE_21__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_22__, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_21__** %0, %struct.TYPE_21__*** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %9, align 8
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %10, align 8
  %18 = bitcast %struct.TYPE_22__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.TYPE_22__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  store i32* null, i32** %15, align 8
  %19 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %19, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_19__*, i8**, i8**, %struct.TYPE_22__*, i8*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_19__*, i8**, i8**, %struct.TYPE_22__*, i8*, %struct.TYPE_18__*)** %21, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %26 = call i32 %22(%struct.TYPE_19__* %23, i8** %13, i8** %14, %struct.TYPE_22__* %12, i8* %24, %struct.TYPE_18__* %25)
  store i32 %26, i32* %17, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %5
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @git_repository_odb(i32** %15, i32 %31)
  store i32 %32, i32* %17, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %28
  %35 = load i32*, i32** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %41 = call i32 @git_odb_write(i32* %16, i32* %35, i32 %37, i64 %39, i32 %40)
  store i32 %41, i32* %17, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34, %28, %5
  br label %73

44:                                               ; preds = %34
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = call %struct.TYPE_21__* @git_pool_mallocz(i32* %46, i32 32)
  store %struct.TYPE_21__* %47, %struct.TYPE_21__** %11, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %49 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_21__* %48)
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 3
  %52 = call i32 @git_oid_cpy(i32* %51, i32* %16)
  %53 = load i8*, i8** %14, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i8*, i8** %13, align 8
  %64 = call %struct.TYPE_21__* @git_pool_strdup(i32* %62, i8* %63)
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  store %struct.TYPE_21__* %64, %struct.TYPE_21__** %66, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %68, align 8
  %70 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_21__* %69)
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %72 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  store %struct.TYPE_21__* %71, %struct.TYPE_21__** %72, align 8
  br label %73

73:                                               ; preds = %44, %43
  %74 = call i32 @git_buf_dispose(%struct.TYPE_22__* %12)
  %75 = load i32*, i32** %15, align 8
  %76 = call i32 @git_odb_free(i32* %75)
  %77 = load i32, i32* %17, align 4
  ret i32 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_repository_odb(i32**, i32) #2

declare dso_local i32 @git_odb_write(i32*, i32*, i32, i64, i32) #2

declare dso_local %struct.TYPE_21__* @git_pool_mallocz(i32*, i32) #2

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_21__*) #2

declare dso_local i32 @git_oid_cpy(i32*, i32*) #2

declare dso_local %struct.TYPE_21__* @git_pool_strdup(i32*, i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_22__*) #2

declare dso_local i32 @git_odb_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
