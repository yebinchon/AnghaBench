; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_filter.c_git_filter_list_stream_file.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_filter.c_git_filter_list_stream_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, i8*, i64)*, i32 (%struct.TYPE_11__*)* }

@FILTERIO_BUFSIZE = common dso_local global i32 0, align 4
@GIT_BUF_INIT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@GIT_VECTOR_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_filter_list_stream_file(i32* %0, i32* %1, i8* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %8, align 8
  %19 = load i32, i32* @FILTERIO_BUFSIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = bitcast %struct.TYPE_12__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 bitcast (%struct.TYPE_12__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32*, i32** %6, align 8
  %28 = call i8* @git_repository_workdir(i32* %27)
  br label %30

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %29, %26
  %31 = phi i8* [ %28, %26 ], [ null, %29 ]
  store i8* %31, i8** %12, align 8
  %32 = load i32, i32* @GIT_VECTOR_INIT, align 4
  store i32 %32, i32* %13, align 4
  store i32 -1, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %35 = call i32 @stream_list_init(%struct.TYPE_11__** %14, i32* %13, i32* %33, %struct.TYPE_11__* %34)
  store i32 %35, i32* %17, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = call i32 @git_path_join_unrooted(%struct.TYPE_12__* %11, i8* %38, i8* %39, i32* null)
  store i32 %40, i32* %17, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %30
  br label %71

43:                                               ; preds = %37
  store i32 1, i32* %18, align 4
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @git_futils_open_ro(i32 %45)
  store i32 %46, i32* %16, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %17, align 4
  br label %71

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %65, %50
  %52 = load i32, i32* %16, align 4
  %53 = trunc i64 %20 to i32
  %54 = call i64 @p_read(i32 %52, i8* %22, i32 %53)
  store i64 %54, i64* %15, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_11__*, i8*, i64)*, i32 (%struct.TYPE_11__*, i8*, i64)** %58, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %61 = load i64, i64* %15, align 8
  %62 = call i32 %59(%struct.TYPE_11__* %60, i8* %22, i64 %61)
  store i32 %62, i32* %17, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %71

65:                                               ; preds = %56
  br label %51

66:                                               ; preds = %51
  %67 = load i64, i64* %15, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 -1, i32* %17, align 4
  br label %70

70:                                               ; preds = %69, %66
  br label %71

71:                                               ; preds = %70, %64, %48, %42
  %72 = load i32, i32* %18, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %76, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %79 = call i32 %77(%struct.TYPE_11__* %78)
  %80 = load i32, i32* %17, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %17, align 4
  br label %82

82:                                               ; preds = %74, %71
  %83 = load i32, i32* %16, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %16, align 4
  %87 = call i32 @p_close(i32 %86)
  br label %88

88:                                               ; preds = %85, %82
  %89 = call i32 @stream_list_free(i32* %13)
  %90 = call i32 @git_buf_dispose(%struct.TYPE_12__* %11)
  %91 = load i32, i32* %17, align 4
  %92 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %92)
  ret i32 %91
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @git_repository_workdir(i32*) #3

declare dso_local i32 @stream_list_init(%struct.TYPE_11__**, i32*, i32*, %struct.TYPE_11__*) #3

declare dso_local i32 @git_path_join_unrooted(%struct.TYPE_12__*, i8*, i8*, i32*) #3

declare dso_local i32 @git_futils_open_ro(i32) #3

declare dso_local i64 @p_read(i32, i8*, i32) #3

declare dso_local i32 @p_close(i32) #3

declare dso_local i32 @stream_list_free(i32*) #3

declare dso_local i32 @git_buf_dispose(%struct.TYPE_12__*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
