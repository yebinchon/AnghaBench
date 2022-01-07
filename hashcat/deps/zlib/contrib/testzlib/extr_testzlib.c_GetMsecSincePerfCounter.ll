; ModuleID = '/home/carl/AnghaBench/hashcat/deps/zlib/contrib/testzlib/extr_testzlib.c_GetMsecSincePerfCounter.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/zlib/contrib/testzlib/extr_testzlib.c_GetMsecSincePerfCounter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetMsecSincePerfCounter(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %4, align 4
  store i32 16, i32* %10, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 @QueryPerformanceCounter(%struct.TYPE_8__* %5)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15, %2
  %19 = call i32 (...) @GetTickCount()
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %19, %21
  %23 = mul nsw i32 %22, 1
  store i32 %23, i32* %11, align 4
  br label %47

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @MyDoMinus64(%struct.TYPE_8__* %7, i32 %26, i32 %28)
  %30 = call i32 @QueryPerformanceFrequency(%struct.TYPE_8__* %6)
  %31 = bitcast %struct.TYPE_8__* %7 to i64*
  %32 = load i64, i64* %31, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @Int64ShrlMod32(i64 %32, i32 %33)
  store i64 %34, i64* %8, align 8
  %35 = bitcast %struct.TYPE_8__* %6 to i64*
  %36 = load i64, i64* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @Int64ShrlMod32(i64 %36, i32 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %8, align 8
  %40 = trunc i64 %39 to i32
  %41 = mul nsw i32 %40, 1000
  %42 = load i64, i64* %9, align 8
  %43 = trunc i64 %42 to i32
  %44 = sdiv i32 %41, %43
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = mul nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %24, %18
  %48 = load i32, i32* %11, align 4
  ret i32 %48
}

declare dso_local i32 @QueryPerformanceCounter(%struct.TYPE_8__*) #1

declare dso_local i32 @GetTickCount(...) #1

declare dso_local i32 @MyDoMinus64(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @QueryPerformanceFrequency(%struct.TYPE_8__*) #1

declare dso_local i64 @Int64ShrlMod32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
