; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_reset_chip.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_reset_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32 }

@RTL8367_CHIP_RESET_REG = common dso_local global i32 0, align 4
@RTL8367_CHIP_RESET_HW = common dso_local global i32 0, align 4
@RTL8367_RESET_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"chip reset timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*)* @rtl8367_reset_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367_reset_chip(%struct.rtl8366_smi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl8366_smi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %3, align 8
  store i32 10, i32* %4, align 4
  %7 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %8 = load i32, i32* @RTL8367_CHIP_RESET_REG, align 4
  %9 = load i32, i32* @RTL8367_CHIP_RESET_HW, align 4
  %10 = call i32 @REG_WR(%struct.rtl8366_smi* %7, i32 %8, i32 %9)
  %11 = load i32, i32* @RTL8367_RESET_DELAY, align 4
  %12 = call i32 @msleep(i32 %11)
  br label %13

13:                                               ; preds = %24, %1
  %14 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %15 = load i32, i32* @RTL8367_CHIP_RESET_REG, align 4
  %16 = call i32 @REG_RD(%struct.rtl8366_smi* %14, i32 %15, i32* %6)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @RTL8367_CHIP_RESET_HW, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  br label %28

22:                                               ; preds = %13
  %23 = call i32 @msleep(i32 1)
  br label %24

24:                                               ; preds = %22
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %13, label %28

28:                                               ; preds = %24, %21
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %33 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ETIMEDOUT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %31
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @REG_WR(%struct.rtl8366_smi*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @REG_RD(%struct.rtl8366_smi*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
