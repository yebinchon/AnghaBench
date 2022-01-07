; ModuleID = '/home/carl/AnghaBench/lede/package/boot/uboot-ar71xx/src/drivers/net/phy/extr_rtl8366_mii.c_rtl8366_setPhyReg.c'
source_filename = "/home/carl/AnghaBench/lede/package/boot/uboot-ar71xx/src/drivers/net/phy/extr_rtl8366_mii.c_rtl8366_setPhyReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RTL8366S_PHY_NO_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"rtl8366s: invalid phy number!\0A\00", align 1
@RTL8366S_PHY_ADDR_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"rtl8366s: invalid phy register number!\0A\00", align 1
@RTL8366S_PHY_ACCESS_CTRL_REG = common dso_local global i32 0, align 4
@RTL8366S_PHY_CTRL_WRITE = common dso_local global i32 0, align 4
@RTL8366S_PHY_NO_OFFSET = common dso_local global i32 0, align 4
@RTL8366S_PHY_REG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @rtl8366_setPhyReg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366_setPhyReg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @RTL8366S_PHY_NO_MAX, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %42

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @RTL8366S_PHY_ADDR_MAX, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %42

20:                                               ; preds = %14
  %21 = load i32, i32* @RTL8366S_PHY_ACCESS_CTRL_REG, align 4
  %22 = load i32, i32* @RTL8366S_PHY_CTRL_WRITE, align 4
  %23 = call i64 @rtl8366_writeRegister(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %42

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @RTL8366S_PHY_NO_OFFSET, align 4
  %29 = add nsw i32 %27, %28
  %30 = shl i32 1, %29
  %31 = or i32 32768, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @RTL8366S_PHY_REG_MASK, align 4
  %34 = and i32 %32, %33
  %35 = or i32 %31, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @rtl8366_writeRegister(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %42

41:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %40, %25, %18, %12
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @rtl8366_writeRegister(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
