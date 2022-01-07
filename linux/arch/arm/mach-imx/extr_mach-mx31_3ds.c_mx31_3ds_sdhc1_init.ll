; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-mx31_3ds.c_mx31_3ds_sdhc1_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-mx31_3ds.c_mx31_3ds_sdhc1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@mx31_3ds_sdhc1_gpios = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to request the SD/MMC GPIOs.\0A\00", align 1
@MX31_PIN_GPIO3_1 = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"sdhc1-detect\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Unable to request the SD/MMC card-detect IRQ.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i8*)* @mx31_3ds_sdhc1_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx31_3ds_sdhc1_init(%struct.device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @mx31_3ds_sdhc1_gpios, align 4
  %10 = load i32, i32* @mx31_3ds_sdhc1_gpios, align 4
  %11 = call i32 @ARRAY_SIZE(i32 %10)
  %12 = call i32 @gpio_request_array(i32 %9, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %39

18:                                               ; preds = %3
  %19 = load i32, i32* @MX31_PIN_GPIO3_1, align 4
  %20 = call i32 @IOMUX_TO_GPIO(i32 %19)
  %21 = call i32 @gpio_to_irq(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %24 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %25 = or i32 %23, %24
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @request_irq(i32 %21, i32 %22, i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = call i32 @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %33

32:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %39

33:                                               ; preds = %30
  %34 = load i32, i32* @mx31_3ds_sdhc1_gpios, align 4
  %35 = load i32, i32* @mx31_3ds_sdhc1_gpios, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = call i32 @gpio_free_array(i32 %34, i32 %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %33, %32, %15
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @gpio_request_array(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @IOMUX_TO_GPIO(i32) #1

declare dso_local i32 @gpio_free_array(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
