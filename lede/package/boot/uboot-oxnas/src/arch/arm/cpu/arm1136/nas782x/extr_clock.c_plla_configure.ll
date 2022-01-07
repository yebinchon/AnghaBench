; ModuleID = '/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/arch/arm/cpu/arm1136/nas782x/extr_clock.c_plla_configure.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/arch/arm/cpu/arm1136/nas782x/extr_clock.c_plla_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYS_CTRL_PLLA_CTRL0 = common dso_local global i32 0, align 4
@PLL_BYPASS = common dso_local global i32 0, align 4
@SYS_CTRL_RST_PLLA = common dso_local global i32 0, align 4
@PLL_REFDIV_SHIFT = common dso_local global i32 0, align 4
@PLL_OUTDIV_SHIFT = common dso_local global i32 0, align 4
@SAT_ENABLE = common dso_local global i32 0, align 4
@SYS_CTRL_PLLA_CTRL1 = common dso_local global i32 0, align 4
@PLL_BWADJ_SHIFT = common dso_local global i32 0, align 4
@SYS_CTRL_PLLA_CTRL2 = common dso_local global i32 0, align 4
@SYS_CTRL_PLLA_CTRL3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"  plla_ctrl0 : %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"  plla_ctrl1 : %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"  plla_ctrl2 : %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"  plla_ctrl3 : %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"\0APLLA Set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32)* @plla_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plla_configure(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* @SYS_CTRL_PLLA_CTRL0, align 4
  %14 = load i32, i32* @PLL_BYPASS, align 4
  %15 = call i32 @setbits_le32(i32 %13, i32 %14)
  %16 = call i32 @udelay(i32 10)
  %17 = load i32, i32* @SYS_CTRL_RST_PLLA, align 4
  %18 = call i32 @reset_block(i32 %17, i32 1)
  %19 = call i32 @udelay(i32 10)
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @PLL_REFDIV_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @PLL_OUTDIV_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = or i32 %22, %25
  %27 = load i32, i32* @SAT_ENABLE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @PLL_BYPASS, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SYS_CTRL_PLLA_CTRL0, align 4
  %32 = call i32 @writel(i32 %30, i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @SYS_CTRL_PLLA_CTRL1, align 4
  %35 = call i32 @writel(i32 %33, i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @PLL_BWADJ_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SYS_CTRL_PLLA_CTRL2, align 4
  %42 = call i32 @writel(i32 %40, i32 %41)
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @SYS_CTRL_PLLA_CTRL3, align 4
  %45 = call i32 @writel(i32 %43, i32 %44)
  %46 = call i32 @udelay(i32 10)
  %47 = load i32, i32* @SYS_CTRL_RST_PLLA, align 4
  %48 = call i32 @reset_block(i32 %47, i32 0)
  %49 = call i32 @udelay(i32 100)
  %50 = load i32, i32* @SYS_CTRL_PLLA_CTRL0, align 4
  %51 = call i32 @readl(i32 %50)
  %52 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @SYS_CTRL_PLLA_CTRL1, align 4
  %54 = call i32 @readl(i32 %53)
  %55 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @SYS_CTRL_PLLA_CTRL2, align 4
  %57 = call i32 @readl(i32 %56)
  %58 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @SYS_CTRL_PLLA_CTRL3, align 4
  %60 = call i32 @readl(i32 %59)
  %61 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @SYS_CTRL_PLLA_CTRL0, align 4
  %63 = load i32, i32* @PLL_BYPASS, align 4
  %64 = call i32 @clrbits_le32(i32 %62, i32 %63)
  %65 = call i32 @puts(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @setbits_le32(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @reset_block(i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @clrbits_le32(i32, i32) #1

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
