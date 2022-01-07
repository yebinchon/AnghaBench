; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/common/extr_sa1111.c_sa1111_get_audio_rate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/common/extr_sa1111.c_sa1111_get_audio_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1111_dev = type { i64 }
%struct.sa1111 = type { i64 }

@SA1111_DEVID_SAC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SA1111_SKAUD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sa1111_get_audio_rate(%struct.sa1111_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sa1111_dev*, align 8
  %4 = alloca %struct.sa1111*, align 8
  %5 = alloca i64, align 8
  store %struct.sa1111_dev* %0, %struct.sa1111_dev** %3, align 8
  %6 = load %struct.sa1111_dev*, %struct.sa1111_dev** %3, align 8
  %7 = call %struct.sa1111* @sa1111_chip_driver(%struct.sa1111_dev* %6)
  store %struct.sa1111* %7, %struct.sa1111** %4, align 8
  %8 = load %struct.sa1111_dev*, %struct.sa1111_dev** %3, align 8
  %9 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SA1111_DEVID_SAC, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %32

16:                                               ; preds = %1
  %17 = load %struct.sa1111*, %struct.sa1111** %4, align 8
  %18 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SA1111_SKAUD, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl_relaxed(i64 %21)
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %5, align 8
  %25 = load %struct.sa1111*, %struct.sa1111** %4, align 8
  %26 = call i32 @__sa1111_pll_clock(%struct.sa1111* %25)
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %5, align 8
  %29 = mul i64 256, %28
  %30 = udiv i64 %27, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %16, %13
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.sa1111* @sa1111_chip_driver(%struct.sa1111_dev*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @__sa1111_pll_clock(%struct.sa1111*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
