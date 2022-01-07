; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_getrusage.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_getrusage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_15__ = type { i32, i32, i32, i64 }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_getrusage(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__, align 8
  %9 = alloca %struct.TYPE_15__, align 8
  %10 = alloca %struct.TYPE_16__, align 8
  %11 = alloca %struct.TYPE_17__, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %13 = call i32 (...) @GetCurrentProcess()
  %14 = call i32 @GetProcessTimes(i32 %13, i32* %4, i32* %5, i32* %6, i32* %7)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = call i32 (...) @GetLastError()
  %19 = call i32 @uv_translate_sys_error(i32 %18)
  store i32 %19, i32* %2, align 4
  br label %114

20:                                               ; preds = %1
  %21 = call i32 @FileTimeToSystemTime(i32* %6, %struct.TYPE_15__* %8)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = call i32 (...) @GetLastError()
  %26 = call i32 @uv_translate_sys_error(i32 %25)
  store i32 %26, i32* %2, align 4
  br label %114

27:                                               ; preds = %20
  %28 = call i32 @FileTimeToSystemTime(i32* %7, %struct.TYPE_15__* %9)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = call i32 (...) @GetLastError()
  %33 = call i32 @uv_translate_sys_error(i32 %32)
  store i32 %33, i32* %2, align 4
  br label %114

34:                                               ; preds = %27
  %35 = call i32 (...) @GetCurrentProcess()
  %36 = call i32 @GetProcessMemoryInfo(i32 %35, %struct.TYPE_16__* %10, i32 16)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = call i32 (...) @GetLastError()
  %41 = call i32 @uv_translate_sys_error(i32 %40)
  store i32 %41, i32* %2, align 4
  br label %114

42:                                               ; preds = %34
  %43 = call i32 (...) @GetCurrentProcess()
  %44 = call i32 @GetProcessIoCounters(i32 %43, %struct.TYPE_17__* %11)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = call i32 (...) @GetLastError()
  %49 = call i32 @uv_translate_sys_error(i32 %48)
  store i32 %49, i32* %2, align 4
  br label %114

50:                                               ; preds = %42
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = call i32 @memset(%struct.TYPE_14__* %51, i32 0, i32 48)
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %54, 3600
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %57, 60
  %59 = add nsw i32 %55, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %60, %62
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  store i64 %63, i64* %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %68, 1000
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 %74, 3600
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %77, 60
  %79 = add nsw i32 %75, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %80, %82
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  store i64 %83, i64* %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %88, 1000
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = sdiv i32 %100, 1024
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %50, %47, %39, %31, %24, %17
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @GetProcessTimes(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @FileTimeToSystemTime(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @GetProcessMemoryInfo(i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @GetProcessIoCounters(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
