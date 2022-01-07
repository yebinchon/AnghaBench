; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat.c_float64_sub.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat.c_float64_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roundingData = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @float64_sub(%struct.roundingData* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.roundingData*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.roundingData* %0, %struct.roundingData** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @extractFloat64Sign(i32 %10)
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @extractFloat64Sign(i32 %12)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.roundingData*, %struct.roundingData** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @subFloat64Sigs(%struct.roundingData* %18, i32 %19, i32 %20, i64 %21)
  store i32 %22, i32* %4, align 4
  br label %29

23:                                               ; preds = %3
  %24 = load %struct.roundingData*, %struct.roundingData** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @addFloat64Sigs(%struct.roundingData* %24, i32 %25, i32 %26, i64 %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %23, %17
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i64 @extractFloat64Sign(i32) #1

declare dso_local i32 @subFloat64Sigs(%struct.roundingData*, i32, i32, i64) #1

declare dso_local i32 @addFloat64Sigs(%struct.roundingData*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
