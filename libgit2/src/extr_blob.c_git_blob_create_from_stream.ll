; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_blob.c_git_blob_create_from_stream.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_blob.c_git_blob_create_from_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__, i32*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32 (i32*)*, i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@blob_writestream_write = common dso_local global i32 0, align 4
@blob_writestream_close = common dso_local global i32 0, align 4
@GIT_REPOSITORY_ITEM_OBJECTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"streamed\00", align 1
@GIT_FILEBUF_TEMPORARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_blob_create_from_stream(i32** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = bitcast %struct.TYPE_13__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_13__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %11 = load i32**, i32*** %4, align 8
  %12 = icmp ne i32** %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br label %16

16:                                               ; preds = %13, %3
  %17 = phi i1 [ false, %3 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = call %struct.TYPE_14__* @git__calloc(i32 1, i32 40)
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %9, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %22 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_14__* %21)
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %16
  %26 = load i8*, i8** %6, align 8
  %27 = call %struct.TYPE_14__* @git__strdup(i8* %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 3
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %29, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_14__* %32)
  br label %34

34:                                               ; preds = %25, %16
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = load i32, i32* @blob_writestream_write, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @blob_writestream_close, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  store i32 (i32*)* @blob_writestream_free, i32 (i32*)** %48, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @GIT_REPOSITORY_ITEM_OBJECTS, align 4
  %51 = call i32 @git_repository_item_path(%struct.TYPE_13__* %8, i32* %49, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %34
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @git_buf_joinpath(%struct.TYPE_13__* %8, i32 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %56, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53, %34
  br label %71

59:                                               ; preds = %53
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = call i32 @git_buf_cstr(%struct.TYPE_13__* %8)
  %63 = load i32, i32* @GIT_FILEBUF_TEMPORARY, align 4
  %64 = call i32 @git_filebuf_open_withsize(i32* %61, i32 %62, i32 %63, i32 438, i32 2097152)
  store i32 %64, i32* %7, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %71

67:                                               ; preds = %59
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %69 = bitcast %struct.TYPE_14__* %68 to i32*
  %70 = load i32**, i32*** %4, align 8
  store i32* %69, i32** %70, align 8
  br label %71

71:                                               ; preds = %67, %66, %58
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %76 = bitcast %struct.TYPE_14__* %75 to i32*
  %77 = call i32 @blob_writestream_free(i32* %76)
  br label %78

78:                                               ; preds = %74, %71
  %79 = call i32 @git_buf_dispose(%struct.TYPE_13__* %8)
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local %struct.TYPE_14__* @git__calloc(i32, i32) #2

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_14__*) #2

declare dso_local %struct.TYPE_14__* @git__strdup(i8*) #2

declare dso_local i32 @blob_writestream_free(i32*) #2

declare dso_local i32 @git_repository_item_path(%struct.TYPE_13__*, i32*, i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_13__*, i32, i8*) #2

declare dso_local i32 @git_filebuf_open_withsize(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @git_buf_cstr(%struct.TYPE_13__*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_13__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
