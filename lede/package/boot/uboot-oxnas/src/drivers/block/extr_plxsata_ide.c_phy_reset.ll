; ModuleID = '/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_phy_reset.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/uboot-oxnas/src/drivers/block/extr_plxsata_ide.c_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SATA_STD_ASYNC_REGS_OFF = common dso_local global i32 0, align 4
@LOS_AND_TX_LVL = common dso_local global i32 0, align 4
@TX_ATTEN = common dso_local global i32 0, align 4
@SATA_SCR_CONTROL = common dso_local global i32 0, align 4
@SATA_SCR_STATUS = common dso_local global i32 0, align 4
@SATA_SCR_ERROR = common dso_local global i32 0, align 4
@PHY_LOOP_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @SATA_STD_ASYNC_REGS_OFF, align 4
  %7 = sub nsw i32 96, %6
  %8 = sdiv i32 %7, 4
  %9 = load i32, i32* @LOS_AND_TX_LVL, align 4
  %10 = call i32 @scr_write(i32 %5, i32 %8, i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @SATA_STD_ASYNC_REGS_OFF, align 4
  %13 = sub nsw i32 112, %12
  %14 = sdiv i32 %13, 4
  %15 = load i32, i32* @TX_ATTEN, align 4
  %16 = call i32 @scr_write(i32 %11, i32 %14, i32 %15)
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @SATA_SCR_CONTROL, align 4
  %19 = call i32 @scr_write(i32 %17, i32 %18, i32 785)
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @SATA_SCR_STATUS, align 4
  %22 = call i32 @scr_read(i32 %20, i32 %21)
  %23 = call i32 @udelay(i32 1000)
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @SATA_SCR_CONTROL, align 4
  %26 = call i32 @scr_write(i32 %24, i32 %25, i32 784)
  br label %27

27:                                               ; preds = %39, %1
  %28 = call i32 @udelay(i32 200000)
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @SATA_SCR_STATUS, align 4
  %31 = call i32 @scr_read(i32 %29, i32 %30)
  %32 = and i32 %31, 15
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @SATA_SCR_ERROR, align 4
  %37 = call i32 @scr_write(i32 %35, i32 %36, i32 -1)
  store i32 1, i32* %3, align 4
  br label %44

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @PHY_LOOP_COUNT, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %27, label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 @udelay(i32 500000)
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @scr_write(i32, i32, i32) #1

declare dso_local i32 @scr_read(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
