; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/rb532/extr_devices.c_rb532_cmd_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/rb532/extr_devices.c_rb532_cmd_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NAND_CTRL_CHANGE = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@NAND_ALE = common dso_local global i32 0, align 4
@NAND_CMD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32)* @rb532_cmd_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb532_cmd_ctrl(%struct.nand_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @NAND_CLE, align 4
  %16 = and i32 %14, %15
  %17 = shl i32 %16, 1
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %7, align 1
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @NAND_ALE, align 4
  %21 = and i32 %19, %20
  %22 = lshr i32 %21, 1
  %23 = load i8, i8* %7, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %24, %22
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %7, align 1
  %27 = load i32, i32* %6, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* @NAND_CLE, align 4
  %30 = and i32 %28, %29
  %31 = shl i32 %30, 1
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %8, align 1
  %33 = load i32, i32* %6, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* @NAND_ALE, align 4
  %36 = and i32 %34, %35
  %37 = lshr i32 %36, 1
  %38 = load i8, i8* %8, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %39, %37
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %8, align 1
  %42 = load i8, i8* %7, align 1
  %43 = load i8, i8* %8, align 1
  %44 = call i32 @set_latch_u5(i8 zeroext %42, i8 zeroext %43)
  br label %45

45:                                               ; preds = %13, %3
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @NAND_CMD_NONE, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %52 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @writeb(i32 %50, i32 %54)
  br label %56

56:                                               ; preds = %49, %45
  ret void
}

declare dso_local i32 @set_latch_u5(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
