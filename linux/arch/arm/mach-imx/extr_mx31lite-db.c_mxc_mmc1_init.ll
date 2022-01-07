; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mx31lite-db.c_mxc_mmc1_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mx31lite-db.c_mxc_mmc1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@MX31_PIN_DCD_DCE1 = common dso_local global i32 0, align 4
@gpio_det = common dso_local global i32 0, align 4
@MX31_PIN_GPIO1_6 = common dso_local global i32 0, align 4
@gpio_wp = common dso_local global i32 0, align 4
@MX31_PIN_SD1_DATA0 = common dso_local global i32 0, align 4
@MMC_PAD_CFG = common dso_local global i32 0, align 4
@PAD_CTL_PUE_PUD = common dso_local global i32 0, align 4
@PAD_CTL_100K_PU = common dso_local global i32 0, align 4
@MX31_PIN_SD1_DATA1 = common dso_local global i32 0, align 4
@MX31_PIN_SD1_DATA2 = common dso_local global i32 0, align 4
@MX31_PIN_SD1_DATA3 = common dso_local global i32 0, align 4
@MX31_PIN_SD1_CMD = common dso_local global i32 0, align 4
@MX31_PIN_SD1_CLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"MMC detect\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"MMC w/p\00", align 1
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
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
  %9 = load i32, i32* @MX31_PIN_DCD_DCE1, align 4
  %10 = call i32 @IOMUX_TO_GPIO(i32 %9)
  store i32 %10, i32* @gpio_det, align 4
  %11 = load i32, i32* @MX31_PIN_GPIO1_6, align 4
  %12 = call i32 @IOMUX_TO_GPIO(i32 %11)
  store i32 %12, i32* @gpio_wp, align 4
  %13 = load i32, i32* @MX31_PIN_SD1_DATA0, align 4
  %14 = load i32, i32* @MMC_PAD_CFG, align 4
  %15 = load i32, i32* @PAD_CTL_PUE_PUD, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @PAD_CTL_100K_PU, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @mxc_iomux_set_pad(i32 %13, i32 %18)
  %20 = load i32, i32* @MX31_PIN_SD1_DATA1, align 4
  %21 = load i32, i32* @MMC_PAD_CFG, align 4
  %22 = load i32, i32* @PAD_CTL_PUE_PUD, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @PAD_CTL_100K_PU, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @mxc_iomux_set_pad(i32 %20, i32 %25)
  %27 = load i32, i32* @MX31_PIN_SD1_DATA2, align 4
  %28 = load i32, i32* @MMC_PAD_CFG, align 4
  %29 = load i32, i32* @PAD_CTL_PUE_PUD, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @PAD_CTL_100K_PU, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @mxc_iomux_set_pad(i32 %27, i32 %32)
  %34 = load i32, i32* @MX31_PIN_SD1_DATA3, align 4
  %35 = load i32, i32* @MMC_PAD_CFG, align 4
  %36 = load i32, i32* @PAD_CTL_PUE_PUD, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @PAD_CTL_100K_PU, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @mxc_iomux_set_pad(i32 %34, i32 %39)
  %41 = load i32, i32* @MX31_PIN_SD1_CMD, align 4
  %42 = load i32, i32* @MMC_PAD_CFG, align 4
  %43 = load i32, i32* @PAD_CTL_PUE_PUD, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @PAD_CTL_100K_PU, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @mxc_iomux_set_pad(i32 %41, i32 %46)
  %48 = load i32, i32* @MX31_PIN_SD1_CLK, align 4
  %49 = load i32, i32* @MMC_PAD_CFG, align 4
  %50 = call i32 @mxc_iomux_set_pad(i32 %48, i32 %49)
  %51 = load i32, i32* @gpio_det, align 4
  %52 = call i32 @gpio_request(i32 %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %3
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %88

57:                                               ; preds = %3
  %58 = load i32, i32* @gpio_wp, align 4
  %59 = call i32 @gpio_request(i32 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %84

63:                                               ; preds = %57
  %64 = load i32, i32* @gpio_det, align 4
  %65 = call i32 @gpio_direction_input(i32 %64)
  %66 = load i32, i32* @gpio_wp, align 4
  %67 = call i32 @gpio_direction_input(i32 %66)
  %68 = load i32, i32* @MX31_PIN_DCD_DCE1, align 4
  %69 = call i32 @IOMUX_TO_GPIO(i32 %68)
  %70 = call i32 @gpio_to_irq(i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %73 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %74 = or i32 %72, %73
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @request_irq(i32 %70, i32 %71, i32 %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %63
  br label %81

80:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %88

81:                                               ; preds = %79
  %82 = load i32, i32* @gpio_wp, align 4
  %83 = call i32 @gpio_free(i32 %82)
  br label %84

84:                                               ; preds = %81, %62
  %85 = load i32, i32* @gpio_det, align 4
  %86 = call i32 @gpio_free(i32 %85)
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %84, %80, %55
  %89 = load i32, i32* %4, align 4
  ret i32 %89
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
