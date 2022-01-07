; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_iomux-v1.c_mxc_gpio_mode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_iomux-v1.c_mxc_gpio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIO_PIN_MASK = common dso_local global i32 0, align 4
@GPIO_PORT_MASK = common dso_local global i32 0, align 4
@GPIO_PORT_SHIFT = common dso_local global i32 0, align 4
@GPIO_OCR_MASK = common dso_local global i32 0, align 4
@GPIO_OCR_SHIFT = common dso_local global i32 0, align 4
@GPIO_AOUT_SHIFT = common dso_local global i32 0, align 4
@GPIO_BOUT_SHIFT = common dso_local global i32 0, align 4
@imx_iomuxv1_numports = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GPIO_PUEN = common dso_local global i32 0, align 4
@GPIO_OUT = common dso_local global i32 0, align 4
@GPIO_AF = common dso_local global i32 0, align 4
@GPIO_PF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxc_gpio_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @GPIO_PIN_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @GPIO_PORT_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @GPIO_PORT_SHIFT, align 4
  %16 = ashr i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @GPIO_OCR_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @GPIO_OCR_SHIFT, align 4
  %21 = ashr i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @GPIO_AOUT_SHIFT, align 4
  %24 = ashr i32 %22, %23
  %25 = and i32 %24, 3
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @GPIO_BOUT_SHIFT, align 4
  %28 = ashr i32 %26, %27
  %29 = and i32 %28, 3
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @imx_iomuxv1_numports, align 4
  %32 = icmp uge i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %78

36:                                               ; preds = %1
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @GPIO_PUEN, align 4
  %41 = and i32 %39, %40
  %42 = call i32 @imx_iomuxv1_set_puen(i32 %37, i32 %38, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @GPIO_OUT, align 4
  %47 = and i32 %45, %46
  %48 = call i32 @imx_iomuxv1_set_ddir(i32 %43, i32 %44, i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @GPIO_AF, align 4
  %53 = and i32 %51, %52
  %54 = call i32 @imx_iomuxv1_set_gpr(i32 %49, i32 %50, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @GPIO_PF, align 4
  %59 = load i32, i32* @GPIO_AF, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @imx_iomuxv1_set_gius(i32 %55, i32 %56, i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @imx_iomuxv1_set_ocr(i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @imx_iomuxv1_set_iconfa(i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @imx_iomuxv1_set_iconfb(i32 %74, i32 %75, i32 %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %36, %33
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @imx_iomuxv1_set_puen(i32, i32, i32) #1

declare dso_local i32 @imx_iomuxv1_set_ddir(i32, i32, i32) #1

declare dso_local i32 @imx_iomuxv1_set_gpr(i32, i32, i32) #1

declare dso_local i32 @imx_iomuxv1_set_gius(i32, i32, i32) #1

declare dso_local i32 @imx_iomuxv1_set_ocr(i32, i32, i32) #1

declare dso_local i32 @imx_iomuxv1_set_iconfa(i32, i32, i32) #1

declare dso_local i32 @imx_iomuxv1_set_iconfb(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
