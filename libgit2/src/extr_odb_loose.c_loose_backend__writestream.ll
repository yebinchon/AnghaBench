; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_loose_backend__writestream.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb_loose.c_loose_backend__writestream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 (i32*, i8*, i64)*, i32, i32*, i32*, i32*, i32* }

@MAX_HEADER_LEN = common dso_local global i32 0, align 4
@GIT_BUF_INIT = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@loose_backend__writestream_finalize = common dso_local global i32 0, align 4
@loose_backend__writestream_free = common dso_local global i32 0, align 4
@GIT_STREAM_WRONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"tmp_object\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32, i32)* @loose_backend__writestream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loose_backend__writestream(i32** %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_15__, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  %18 = load i32, i32* @MAX_HEADER_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = bitcast %struct.TYPE_15__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast (%struct.TYPE_15__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = icmp sge i32 %26, 0
  br label %28

28:                                               ; preds = %25, %4
  %29 = phi i1 [ false, %4 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = bitcast i32* %32 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %10, align 8
  %34 = load i32**, i32*** %6, align 8
  store i32* null, i32** %34, align 8
  %35 = trunc i64 %19 to i32
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @git_odb__format_object_header(i64* %15, i8* %21, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %16, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* %16, align 4
  store i32 %41, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %109

42:                                               ; preds = %28
  %43 = call %struct.TYPE_13__* @git__calloc(i32 1, i32 56)
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %11, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %45 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_13__* %44)
  %46 = load i32*, i32** %7, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 5
  store i32* %46, i32** %49, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 4
  store i32* null, i32** %52, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  store i64 (i32*, i8*, i64)* @loose_backend__writestream_write, i64 (i32*, i8*, i64)** %55, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 3
  store i32* @loose_backend__writestream_finalize, i32** %58, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  store i32* @loose_backend__writestream_free, i32** %61, align 8
  %62 = load i32, i32* @GIT_STREAM_WRONLY, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @git_buf_joinpath(%struct.TYPE_15__* %14, i32 %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %93, label %71

71:                                               ; preds = %42
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %77 = call i32 @filebuf_flags(%struct.TYPE_14__* %76)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @git_filebuf_open(i32* %73, i32 %75, i32 %77, i32 %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %71
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i64 (i32*, i8*, i64)*, i64 (i32*, i8*, i64)** %86, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %89 = bitcast %struct.TYPE_13__* %88 to i32*
  %90 = load i64, i64* %15, align 8
  %91 = call i64 %87(i32* %89, i8* %21, i64 %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %83, %71, %42
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = call i32 @git_filebuf_cleanup(i32* %95)
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %98 = call i32 @git__free(%struct.TYPE_13__* %97)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  br label %99

99:                                               ; preds = %93, %83
  %100 = call i32 @git_buf_dispose(%struct.TYPE_15__* %14)
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %102 = bitcast %struct.TYPE_13__* %101 to i32*
  %103 = load i32**, i32*** %6, align 8
  store i32* %102, i32** %103, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %105 = icmp ne %struct.TYPE_13__* %104, null
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 -1, i32 0
  store i32 %108, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %109

109:                                              ; preds = %99, %40
  %110 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(i32) #3

declare dso_local i32 @git_odb__format_object_header(i64*, i8*, i32, i32, i32) #3

declare dso_local %struct.TYPE_13__* @git__calloc(i32, i32) #3

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_13__*) #3

declare dso_local i64 @loose_backend__writestream_write(i32*, i8*, i64) #3

declare dso_local i64 @git_buf_joinpath(%struct.TYPE_15__*, i32, i8*) #3

declare dso_local i64 @git_filebuf_open(i32*, i32, i32, i32) #3

declare dso_local i32 @filebuf_flags(%struct.TYPE_14__*) #3

declare dso_local i32 @git_filebuf_cleanup(i32*) #3

declare dso_local i32 @git__free(%struct.TYPE_13__*) #3

declare dso_local i32 @git_buf_dispose(%struct.TYPE_15__*) #3

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
