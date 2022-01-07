; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_mvsw61xx_mdio_read.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_mvsw61xx_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }

@SMI_OP = common dso_local global i32 0, align 4
@MV_INDIRECT_READ = common dso_local global i32 0, align 4
@MV_INDIRECT_ADDR_S = common dso_local global i32 0, align 4
@MV_INDIRECT_INPROGRESS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SMI_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, i32, i32)* @mvsw61xx_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvsw61xx_mdio_read(%struct.switch_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %9 = load i32, i32* @SMI_OP, align 4
  %10 = call i32 @MV_GLOBAL2REG(i32 %9)
  %11 = load i32, i32* @MV_INDIRECT_READ, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MV_INDIRECT_ADDR_S, align 4
  %14 = shl i32 %12, %13
  %15 = or i32 %11, %14
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @sw16(%struct.switch_dev* %8, i32 %10, i32 %17)
  %19 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %20 = load i32, i32* @SMI_OP, align 4
  %21 = call i32 @MV_GLOBAL2REG(i32 %20)
  %22 = load i32, i32* @MV_INDIRECT_INPROGRESS, align 4
  %23 = call i64 @mvsw61xx_wait_mask_s(%struct.switch_dev* %19, i32 %21, i32 %22, i32 0)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ETIMEDOUT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %33

28:                                               ; preds = %3
  %29 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %30 = load i32, i32* @SMI_DATA, align 4
  %31 = call i32 @MV_GLOBAL2REG(i32 %30)
  %32 = call i32 @sr16(%struct.switch_dev* %29, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %25
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @sw16(%struct.switch_dev*, i32, i32) #1

declare dso_local i32 @MV_GLOBAL2REG(i32) #1

declare dso_local i64 @mvsw61xx_wait_mask_s(%struct.switch_dev*, i32, i32, i32) #1

declare dso_local i32 @sr16(%struct.switch_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
