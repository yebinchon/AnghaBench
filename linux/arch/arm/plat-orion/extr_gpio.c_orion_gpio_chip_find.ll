; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-orion/extr_gpio.c_orion_gpio_chip_find.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-orion/extr_gpio.c_orion_gpio_chip_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orion_gpio_chip = type { %struct.gpio_chip }
%struct.gpio_chip = type { i32, i32 }

@orion_gpio_chip_count = common dso_local global i32 0, align 4
@orion_gpio_chips = common dso_local global %struct.orion_gpio_chip* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.orion_gpio_chip* (i32)* @orion_gpio_chip_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.orion_gpio_chip* @orion_gpio_chip_find(i32 %0) #0 {
  %2 = alloca %struct.orion_gpio_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.orion_gpio_chip*, align 8
  %6 = alloca %struct.gpio_chip*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %36, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @orion_gpio_chip_count, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  %12 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** @orion_gpio_chips, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.orion_gpio_chip, %struct.orion_gpio_chip* %12, i64 %14
  store %struct.orion_gpio_chip* %15, %struct.orion_gpio_chip** %5, align 8
  %16 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %5, align 8
  %17 = getelementptr inbounds %struct.orion_gpio_chip, %struct.orion_gpio_chip* %16, i32 0, i32 0
  store %struct.gpio_chip* %17, %struct.gpio_chip** %6, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %18, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %11
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %26 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %29 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  %32 = icmp slt i32 %24, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %5, align 8
  store %struct.orion_gpio_chip* %34, %struct.orion_gpio_chip** %2, align 8
  br label %40

35:                                               ; preds = %23, %11
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %7

39:                                               ; preds = %7
  store %struct.orion_gpio_chip* null, %struct.orion_gpio_chip** %2, align 8
  br label %40

40:                                               ; preds = %39, %33
  %41 = load %struct.orion_gpio_chip*, %struct.orion_gpio_chip** %2, align 8
  ret %struct.orion_gpio_chip* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
