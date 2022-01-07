; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_fpa11_cprt.c_PerformFIX.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_fpa11_cprt.c_PerformFIX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.roundingData = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PerformFIX(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.roundingData, align 8
  store i32 %0, i32* %3, align 4
  %7 = call %struct.TYPE_5__* (...) @GET_FPA11()
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @getFm(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @SetRoundingMode(i32 %10)
  %12 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %6, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @SetRoundingPrecision(i32 %13)
  %15 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %6, i32 0, i32 1
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %6, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %50 [
    i32 128, label %24
    i32 130, label %37
  ]

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @getRd(i32 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @float32_to_int32(%struct.roundingData* %6, i32 %34)
  %36 = call i32 @writeRegister(i32 %26, i32 %35)
  br label %51

37:                                               ; preds = %1
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @getRd(i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @float64_to_int32(%struct.roundingData* %6, i32 %47)
  %49 = call i32 @writeRegister(i32 %39, i32 %48)
  br label %51

50:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

51:                                               ; preds = %37, %24
  %52 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %6, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %6, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @float_raise(i64 %57)
  br label %59

59:                                               ; preds = %55, %51
  store i32 1, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %50
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_5__* @GET_FPA11(...) #1

declare dso_local i32 @getFm(i32) #1

declare dso_local i32 @SetRoundingMode(i32) #1

declare dso_local i32 @SetRoundingPrecision(i32) #1

declare dso_local i32 @writeRegister(i32, i32) #1

declare dso_local i32 @getRd(i32) #1

declare dso_local i32 @float32_to_int32(%struct.roundingData*, i32) #1

declare dso_local i32 @float64_to_int32(%struct.roundingData*, i32) #1

declare dso_local i32 @float_raise(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
