; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/common/extr_locomo.c_locomo_gpio_read_level.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/common/extr_locomo.c_locomo_gpio_read_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.locomo = type { i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@LOCOMO_GPL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @locomo_gpio_read_level(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.locomo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.locomo* @dev_get_drvdata(%struct.device* %9)
  store %struct.locomo* %10, %struct.locomo** %6, align 8
  %11 = load %struct.locomo*, %struct.locomo** %6, align 8
  %12 = icmp ne %struct.locomo* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %35

16:                                               ; preds = %2
  %17 = load %struct.locomo*, %struct.locomo** %6, align 8
  %18 = getelementptr inbounds %struct.locomo, %struct.locomo* %17, i32 0, i32 0
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.locomo*, %struct.locomo** %6, align 8
  %22 = getelementptr inbounds %struct.locomo, %struct.locomo* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LOCOMO_GPL, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @locomo_readl(i64 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.locomo*, %struct.locomo** %6, align 8
  %28 = getelementptr inbounds %struct.locomo, %struct.locomo* %27, i32 0, i32 0
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %16, %13
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.locomo* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @locomo_readl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
