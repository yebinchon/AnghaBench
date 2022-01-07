; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/common/extr_sa1111.c_sa1111_select_audio_mode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/common/extr_sa1111.c_sa1111_select_audio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1111_dev = type { i32 }
%struct.sa1111 = type { i32, i64 }

@SA1111_SKCR = common dso_local global i64 0, align 8
@SA1111_AUDIO_I2S = common dso_local global i32 0, align 4
@SKCR_SELAC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sa1111_select_audio_mode(%struct.sa1111_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.sa1111_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sa1111*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.sa1111_dev* %0, %struct.sa1111_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sa1111_dev*, %struct.sa1111_dev** %3, align 8
  %9 = call %struct.sa1111* @sa1111_chip_driver(%struct.sa1111_dev* %8)
  store %struct.sa1111* %9, %struct.sa1111** %5, align 8
  %10 = load %struct.sa1111*, %struct.sa1111** %5, align 8
  %11 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.sa1111*, %struct.sa1111** %5, align 8
  %15 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SA1111_SKCR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl_relaxed(i64 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SA1111_AUDIO_I2S, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i32, i32* @SKCR_SELAC, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load i32, i32* @SKCR_SELAC, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.sa1111*, %struct.sa1111** %5, align 8
  %35 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SA1111_SKCR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel_relaxed(i32 %33, i64 %38)
  %40 = load %struct.sa1111*, %struct.sa1111** %5, align 8
  %41 = getelementptr inbounds %struct.sa1111, %struct.sa1111* %40, i32 0, i32 0
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  ret void
}

declare dso_local %struct.sa1111* @sa1111_chip_driver(%struct.sa1111_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
