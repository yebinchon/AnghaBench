; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_core.c_uv_fileno.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_core.c_uv_fileno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@UV_EINVAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@UV_EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_fileno(%struct.TYPE_14__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %38 [
    i32 130, label %10
    i32 132, label %16
    i32 129, label %21
    i32 128, label %26
    i32 131, label %32
  ]

10:                                               ; preds = %2
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = bitcast %struct.TYPE_14__* %11 to %struct.TYPE_11__*
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %6, align 8
  br label %40

16:                                               ; preds = %2
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = bitcast %struct.TYPE_14__* %17 to %struct.TYPE_13__*
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  br label %40

21:                                               ; preds = %2
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = bitcast %struct.TYPE_14__* %22 to %struct.TYPE_10__*
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  br label %40

26:                                               ; preds = %2
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %28 = bitcast %struct.TYPE_14__* %27 to %struct.TYPE_9__*
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %6, align 8
  br label %40

32:                                               ; preds = %2
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = bitcast %struct.TYPE_14__* %33 to %struct.TYPE_12__*
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %6, align 8
  br label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @UV_EINVAL, align 4
  store i32 %39, i32* %3, align 4
  br label %53

40:                                               ; preds = %32, %26, %21, %16, %10
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = call i64 @uv_is_closing(%struct.TYPE_14__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %40
  %49 = load i32, i32* @UV_EBADF, align 4
  store i32 %49, i32* %3, align 4
  br label %53

50:                                               ; preds = %44
  %51 = load i64, i64* %6, align 8
  %52 = load i64*, i64** %5, align 8
  store i64 %51, i64* %52, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %48, %38
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @uv_is_closing(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
