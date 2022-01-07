; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_iomux-v3.c_mxc_iomux_v3_setup_pad.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_iomux-v3.c_mxc_iomux_v3_setup_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MUX_CTRL_OFS_MASK = common dso_local global i32 0, align 4
@MUX_CTRL_OFS_SHIFT = common dso_local global i32 0, align 4
@MUX_MODE_MASK = common dso_local global i32 0, align 4
@MUX_MODE_SHIFT = common dso_local global i32 0, align 4
@MUX_SEL_INPUT_OFS_MASK = common dso_local global i32 0, align 4
@MUX_SEL_INPUT_OFS_SHIFT = common dso_local global i32 0, align 4
@MUX_SEL_INPUT_MASK = common dso_local global i32 0, align 4
@MUX_SEL_INPUT_SHIFT = common dso_local global i32 0, align 4
@MUX_PAD_CTRL_OFS_MASK = common dso_local global i32 0, align 4
@MUX_PAD_CTRL_OFS_SHIFT = common dso_local global i32 0, align 4
@MUX_PAD_CTRL_MASK = common dso_local global i32 0, align 4
@MUX_PAD_CTRL_SHIFT = common dso_local global i32 0, align 4
@base = common dso_local global i32 0, align 4
@NO_PAD_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxc_iomux_v3_setup_pad(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @MUX_CTRL_OFS_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @MUX_CTRL_OFS_SHIFT, align 4
  %13 = ashr i32 %11, %12
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @MUX_MODE_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @MUX_MODE_SHIFT, align 4
  %18 = ashr i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @MUX_SEL_INPUT_OFS_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @MUX_SEL_INPUT_OFS_SHIFT, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @MUX_SEL_INPUT_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @MUX_SEL_INPUT_SHIFT, align 4
  %28 = ashr i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @MUX_PAD_CTRL_OFS_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @MUX_PAD_CTRL_OFS_SHIFT, align 4
  %33 = ashr i32 %31, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @MUX_PAD_CTRL_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @MUX_PAD_CTRL_SHIFT, align 4
  %38 = ashr i32 %36, %37
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %1
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @base, align 4
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %43, %44
  %46 = call i32 @imx_writel(i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %41, %1
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @base, align 4
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i32 @imx_writel(i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @NO_PAD_CTRL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @base, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %66, %67
  %69 = call i32 @imx_writel(i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %64, %61, %56
  ret i32 0
}

declare dso_local i32 @imx_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
