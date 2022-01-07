; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/mtd/nand/extr_rb4xx_nand.c_rb4xx_nand_cmd_ctrl.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/mtd/nand/extr_rb4xx_nand.c_rb4xx_nand_cmd_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }

@NAND_CTRL_CHANGE = common dso_local global i32 0, align 4
@RB4XX_NAND_GPIO_CLE = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@RB4XX_NAND_GPIO_ALE = common dso_local global i32 0, align 4
@NAND_ALE = common dso_local global i32 0, align 4
@RB4XX_NAND_GPIO_NCE = common dso_local global i32 0, align 4
@NAND_NCE = common dso_local global i32 0, align 4
@NAND_CMD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32)* @rb4xx_nand_cmd_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb4xx_nand_cmd_ctrl(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %3
  %12 = load i32, i32* @RB4XX_NAND_GPIO_CLE, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @NAND_CLE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  %19 = call i32 @gpio_set_value_cansleep(i32 %12, i32 %18)
  %20 = load i32, i32* @RB4XX_NAND_GPIO_ALE, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @NAND_ALE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  %27 = call i32 @gpio_set_value_cansleep(i32 %20, i32 %26)
  %28 = load i32, i32* @RB4XX_NAND_GPIO_NCE, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @NAND_NCE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 0, i32 1
  %35 = call i32 @gpio_set_value_cansleep(i32 %28, i32 %34)
  br label %36

36:                                               ; preds = %11, %3
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @NAND_CMD_NONE, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @rb4xx_nand_write_cmd(i32 %41)
  br label %43

43:                                               ; preds = %40, %36
  ret void
}

declare dso_local i32 @gpio_set_value_cansleep(i32, i32) #1

declare dso_local i32 @rb4xx_nand_write_cmd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
