; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/gpio/extr_gpio-nxp-74hc153.c_nxp_74hc153_get_value.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/gpio/extr_gpio-nxp-74hc153.c_nxp_74hc153_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.nxp_74hc153_chip = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nxp_74hc153_platform_data* }
%struct.nxp_74hc153_platform_data = type { i32, i32, i32, i32 }

@NXP_74HC153_S0_MASK = common dso_local global i32 0, align 4
@NXP_74HC153_S1_MASK = common dso_local global i32 0, align 4
@NXP_74HC153_BANK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @nxp_74hc153_get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxp_74hc153_get_value(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nxp_74hc153_chip*, align 8
  %6 = alloca %struct.nxp_74hc153_platform_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %12 = call %struct.nxp_74hc153_chip* @gpio_to_nxp(%struct.gpio_chip* %11)
  store %struct.nxp_74hc153_chip* %12, %struct.nxp_74hc153_chip** %5, align 8
  %13 = load %struct.nxp_74hc153_chip*, %struct.nxp_74hc153_chip** %5, align 8
  %14 = getelementptr inbounds %struct.nxp_74hc153_chip, %struct.nxp_74hc153_chip* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.nxp_74hc153_platform_data*, %struct.nxp_74hc153_platform_data** %16, align 8
  store %struct.nxp_74hc153_platform_data* %17, %struct.nxp_74hc153_platform_data** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @NXP_74HC153_S0_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @NXP_74HC153_S1_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @NXP_74HC153_BANK_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load %struct.nxp_74hc153_platform_data*, %struct.nxp_74hc153_platform_data** %6, align 8
  %38 = getelementptr inbounds %struct.nxp_74hc153_platform_data, %struct.nxp_74hc153_platform_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  br label %44

40:                                               ; preds = %2
  %41 = load %struct.nxp_74hc153_platform_data*, %struct.nxp_74hc153_platform_data** %6, align 8
  %42 = getelementptr inbounds %struct.nxp_74hc153_platform_data, %struct.nxp_74hc153_platform_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %39, %36 ], [ %43, %40 ]
  store i32 %45, i32* %9, align 4
  %46 = load %struct.nxp_74hc153_chip*, %struct.nxp_74hc153_chip** %5, align 8
  %47 = getelementptr inbounds %struct.nxp_74hc153_chip, %struct.nxp_74hc153_chip* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.nxp_74hc153_platform_data*, %struct.nxp_74hc153_platform_data** %6, align 8
  %50 = getelementptr inbounds %struct.nxp_74hc153_platform_data, %struct.nxp_74hc153_platform_data* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @gpio_set_value(i32 %51, i32 %52)
  %54 = load %struct.nxp_74hc153_platform_data*, %struct.nxp_74hc153_platform_data** %6, align 8
  %55 = getelementptr inbounds %struct.nxp_74hc153_platform_data, %struct.nxp_74hc153_platform_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @gpio_set_value(i32 %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @gpio_get_value(i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load %struct.nxp_74hc153_chip*, %struct.nxp_74hc153_chip** %5, align 8
  %62 = getelementptr inbounds %struct.nxp_74hc153_chip, %struct.nxp_74hc153_chip* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %10, align 4
  ret i32 %64
}

declare dso_local %struct.nxp_74hc153_chip* @gpio_to_nxp(%struct.gpio_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
