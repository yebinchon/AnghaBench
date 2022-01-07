; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_qpack.c_prepare_flatten.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_qpack.c_prepare_flatten.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_qpack_flatten_context_t = type { %struct.TYPE_10__*, i32*, i64, i64, i64, %struct.TYPE_10__*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_qpack_flatten_context_t*, %struct.TYPE_9__*, i32*, i32, %struct.TYPE_10__*, %struct.TYPE_10__*)* @prepare_flatten to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_flatten(%struct.st_h2o_qpack_flatten_context_t* %0, %struct.TYPE_9__* %1, i32* %2, i32 %3, %struct.TYPE_10__* %4, %struct.TYPE_10__* %5) #0 {
  %7 = alloca %struct.st_h2o_qpack_flatten_context_t*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  store %struct.st_h2o_qpack_flatten_context_t* %0, %struct.st_h2o_qpack_flatten_context_t** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %12, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %14 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %7, align 8
  %15 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %14, i32 0, i32 7
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %15, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %7, align 8
  %18 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %17, i32 0, i32 1
  store i32* %16, i32** %18, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %7, align 8
  %21 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = icmp ne %struct.TYPE_9__* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %6
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  br label %35

34:                                               ; preds = %24, %6
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi %struct.TYPE_10__* [ %33, %32 ], [ null, %34 ]
  %37 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %7, align 8
  %38 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %37, i32 0, i32 5
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %38, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %40 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %7, align 8
  %41 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %40, i32 0, i32 0
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %43 = icmp ne %struct.TYPE_9__* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %35
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %48, %52
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %53, %57
  %59 = sub nsw i64 %58, 1
  br label %61

60:                                               ; preds = %35
  br label %61

61:                                               ; preds = %60, %44
  %62 = phi i64 [ %59, %44 ], [ 0, %60 ]
  %63 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %7, align 8
  %64 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %63, i32 0, i32 4
  store i64 %62, i64* %64, align 8
  %65 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %7, align 8
  %66 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %7, align 8
  %71 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %7, align 8
  %73 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %7, align 8
  %76 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %75, i32 0, i32 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %7, align 8
  %79 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 2
  %84 = call i32 @h2o_vector_reserve(i32* %74, %struct.TYPE_10__* %77, i64 %83)
  %85 = load %struct.st_h2o_qpack_flatten_context_t*, %struct.st_h2o_qpack_flatten_context_t** %7, align 8
  %86 = getelementptr inbounds %struct.st_h2o_qpack_flatten_context_t, %struct.st_h2o_qpack_flatten_context_t* %85, i32 0, i32 0
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 2
  store i64 %90, i64* %88, align 8
  ret void
}

declare dso_local i32 @h2o_vector_reserve(i32*, %struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
