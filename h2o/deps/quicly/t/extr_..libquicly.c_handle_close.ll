; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_handle_close.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/t/extr_..libquicly.c_handle_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, %struct.TYPE_13__*, i32, i32, i8*, i32)* }
%struct.TYPE_14__ = type { i32, i64 }

@QUICLY_STATE_CLOSING = common dso_local global i64 0, align 8
@QUICLY_ERROR_RECEIVED_STATELESS_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, i32, i32, i64)* @handle_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_close(%struct.TYPE_13__* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = bitcast %struct.TYPE_14__* %7 to { i32, i64 }*
  %13 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %12, i32 0, i32 0
  store i32 %3, i32* %13, align 8
  %14 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %12, i32 0, i32 1
  store i64 %4, i64* %14, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @QUICLY_STATE_CLOSING, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %68

22:                                               ; preds = %5
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @QUICLY_ERROR_RECEIVED_STATELESS_RESET, align 4
  %26 = icmp ne i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @enter_close(%struct.TYPE_13__* %23, i32 0, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %6, align 4
  br label %68

32:                                               ; preds = %22
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = icmp ne %struct.TYPE_15__* %38, null
  br i1 %39, label %40, label %64

40:                                               ; preds = %32
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_15__*, %struct.TYPE_13__*, i32, i32, i8*, i32)*, i32 (%struct.TYPE_15__*, %struct.TYPE_13__*, i32, i32, i8*, i32)** %47, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 %48(%struct.TYPE_15__* %54, %struct.TYPE_13__* %55, i32 %56, i32 %57, i8* %60, i32 %62)
  br label %64

64:                                               ; preds = %40, %32
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @destroy_all_streams(%struct.TYPE_13__* %65, i32 %66, i32 0)
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %64, %30, %21
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @enter_close(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @destroy_all_streams(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
