; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mx31lilly-db.c_mxc_mmc1_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mx31lilly-db.c_mxc_mmc1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@MX31_PIN_GPIO1_1 = common dso_local global i32 0, align 4
@gpio_det = common dso_local global i32 0, align 4
@MX31_PIN_LCS0 = common dso_local global i32 0, align 4
@gpio_wp = common dso_local global i32 0, align 4
@MX31_PIN_SD1_DATA0 = common dso_local global i32 0, align 4
@MMC_PAD_CFG = common dso_local global i32 0, align 4
@MX31_PIN_SD1_DATA1 = common dso_local global i32 0, align 4
@MX31_PIN_SD1_DATA2 = common dso_local global i32 0, align 4
@MX31_PIN_SD1_DATA3 = common dso_local global i32 0, align 4
@MX31_PIN_SD1_CLK = common dso_local global i32 0, align 4
@MX31_PIN_SD1_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"MMC detect\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"MMC w/p\00", align 1
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i8*)* @mxc_mmc1_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxc_mmc1_init(%struct.device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @MX31_PIN_GPIO1_1, align 4
  %10 = call i32 @IOMUX_TO_GPIO(i32 %9)
  store i32 %10, i32* @gpio_det, align 4
  %11 = load i32, i32* @MX31_PIN_LCS0, align 4
  %12 = call i32 @IOMUX_TO_GPIO(i32 %11)
  store i32 %12, i32* @gpio_wp, align 4
  %13 = load i32, i32* @MX31_PIN_SD1_DATA0, align 4
  %14 = load i32, i32* @MMC_PAD_CFG, align 4
  %15 = call i32 @mxc_iomux_set_pad(i32 %13, i32 %14)
  %16 = load i32, i32* @MX31_PIN_SD1_DATA1, align 4
  %17 = load i32, i32* @MMC_PAD_CFG, align 4
  %18 = call i32 @mxc_iomux_set_pad(i32 %16, i32 %17)
  %19 = load i32, i32* @MX31_PIN_SD1_DATA2, align 4
  %20 = load i32, i32* @MMC_PAD_CFG, align 4
  %21 = call i32 @mxc_iomux_set_pad(i32 %19, i32 %20)
  %22 = load i32, i32* @MX31_PIN_SD1_DATA3, align 4
  %23 = load i32, i32* @MMC_PAD_CFG, align 4
  %24 = call i32 @mxc_iomux_set_pad(i32 %22, i32 %23)
  %25 = load i32, i32* @MX31_PIN_SD1_CLK, align 4
  %26 = load i32, i32* @MMC_PAD_CFG, align 4
  %27 = call i32 @mxc_iomux_set_pad(i32 %25, i32 %26)
  %28 = load i32, i32* @MX31_PIN_SD1_CMD, align 4
  %29 = load i32, i32* @MMC_PAD_CFG, align 4
  %30 = call i32 @mxc_iomux_set_pad(i32 %28, i32 %29)
  %31 = load i32, i32* @gpio_det, align 4
  %32 = call i32 @gpio_request(i32 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %66

37:                                               ; preds = %3
  %38 = load i32, i32* @gpio_wp, align 4
  %39 = call i32 @gpio_request(i32 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %62

43:                                               ; preds = %37
  %44 = load i32, i32* @gpio_det, align 4
  %45 = call i32 @gpio_direction_input(i32 %44)
  %46 = load i32, i32* @gpio_wp, align 4
  %47 = call i32 @gpio_direction_input(i32 %46)
  %48 = load i32, i32* @MX31_PIN_GPIO1_1, align 4
  %49 = call i32 @IOMUX_TO_GPIO(i32 %48)
  %50 = call i32 @gpio_to_irq(i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @request_irq(i32 %50, i32 %51, i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  br label %59

58:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %66

59:                                               ; preds = %57
  %60 = load i32, i32* @gpio_wp, align 4
  %61 = call i32 @gpio_free(i32 %60)
  br label %62

62:                                               ; preds = %59, %42
  %63 = load i32, i32* @gpio_det, align 4
  %64 = call i32 @gpio_free(i32 %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %62, %58, %35
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @IOMUX_TO_GPIO(i32) #1

declare dso_local i32 @mxc_iomux_set_pad(i32, i32) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
