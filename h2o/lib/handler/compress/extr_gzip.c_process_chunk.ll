; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/compress/extr_gzip.c_process_chunk.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/compress/extr_gzip.c_process_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_gzip_context_t = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i64, i8*, i8* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@BUF_SIZE = common dso_local global i64 0, align 8
@Z_OK = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@Z_BUF_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.st_gzip_context_t*, i8*, i64, i32, i64, i32 (%struct.TYPE_7__*, i32)*)* @process_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @process_chunk(%struct.st_gzip_context_t* %0, i8* %1, i64 %2, i32 %3, i64 %4, i32 (%struct.TYPE_7__*, i32)* %5) #0 {
  %7 = alloca %struct.st_gzip_context_t*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32 (%struct.TYPE_7__*, i32)*, align 8
  %13 = alloca i32, align 4
  store %struct.st_gzip_context_t* %0, %struct.st_gzip_context_t** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 (%struct.TYPE_7__*, i32)* %5, i32 (%struct.TYPE_7__*, i32)** %12, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %7, align 8
  %16 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  store i8* %14, i8** %17, align 8
  %18 = load i64, i64* %9, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %7, align 8
  %21 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  br label %23

23:                                               ; preds = %135, %6
  %24 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %7, align 8
  %25 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 32
  %33 = load i64, i64* @BUF_SIZE, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %23
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %7, align 8
  %40 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %38, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %7, align 8
  %46 = call i32 @expand_buf(%struct.st_gzip_context_t* %45)
  br label %47

47:                                               ; preds = %44, %35
  %48 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %7, align 8
  %49 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %47, %23
  %56 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %7, align 8
  %57 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %7, align 8
  %65 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i64, i64* %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %63, %71
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %7, align 8
  %75 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  store i8* %73, i8** %76, align 8
  %77 = load i64, i64* @BUF_SIZE, align 8
  %78 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %7, align 8
  %79 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load i64, i64* %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %77, %85
  %87 = trunc i64 %86 to i32
  %88 = zext i32 %87 to i64
  %89 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %7, align 8
  %90 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i64 %88, i64* %91, align 8
  %92 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %12, align 8
  %93 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %7, align 8
  %94 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %93, i32 0, i32 0
  %95 = load i32, i32* %10, align 4
  %96 = call i32 %92(%struct.TYPE_7__* %94, i32 %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @Z_OK, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %108, label %100

100:                                              ; preds = %55
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @Z_STREAM_END, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @Z_BUF_ERROR, align 4
  %107 = icmp eq i32 %105, %106
  br label %108

108:                                              ; preds = %104, %100, %55
  %109 = phi i1 [ true, %100 ], [ true, %55 ], [ %107, %104 ]
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load i64, i64* @BUF_SIZE, align 8
  %113 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %7, align 8
  %114 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %112, %116
  %118 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %7, align 8
  %119 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = load i64, i64* %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  store i64 %117, i64* %124, align 8
  br label %125

125:                                              ; preds = %108
  %126 = load %struct.st_gzip_context_t*, %struct.st_gzip_context_t** %7, align 8
  %127 = getelementptr inbounds %struct.st_gzip_context_t, %struct.st_gzip_context_t* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* @Z_STREAM_END, align 4
  %134 = icmp ne i32 %132, %133
  br label %135

135:                                              ; preds = %131, %125
  %136 = phi i1 [ false, %125 ], [ %134, %131 ]
  br i1 %136, label %23, label %137

137:                                              ; preds = %135
  %138 = load i64, i64* %11, align 8
  ret i64 %138
}

declare dso_local i32 @expand_buf(%struct.st_gzip_context_t*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
