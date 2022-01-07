; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_w16.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_mvsw61xx.c_w16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 (%struct.mii_bus*, i32, i32, i32)* }

@MV_INDIRECT_REG_CMD = common dso_local global i32 0, align 4
@MV_INDIRECT_INPROGRESS = common dso_local global i32 0, align 4
@MV_INDIRECT_REG_DATA = common dso_local global i32 0, align 4
@MV_INDIRECT_WRITE = common dso_local global i32 0, align 4
@MV_INDIRECT_ADDR_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_bus*, i32, i32, i32, i32, i32)* @w16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w16(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.mii_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %6
  %17 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %18 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %17, i32 0, i32 0
  %19 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %18, align 8
  %20 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i32 %19(%struct.mii_bus* %20, i32 %21, i32 %22, i32 %23)
  br label %59

25:                                               ; preds = %6
  %26 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @MV_INDIRECT_REG_CMD, align 4
  %29 = load i32, i32* @MV_INDIRECT_INPROGRESS, align 4
  %30 = call i32 @mvsw61xx_wait_mask_raw(%struct.mii_bus* %26, i32 %27, i32 %28, i32 %29, i32 0)
  %31 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %32 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %31, i32 0, i32 0
  %33 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %32, align 8
  %34 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @MV_INDIRECT_REG_DATA, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 %33(%struct.mii_bus* %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @MV_INDIRECT_REG_CMD, align 4
  %42 = load i32, i32* @MV_INDIRECT_INPROGRESS, align 4
  %43 = call i32 @mvsw61xx_wait_mask_raw(%struct.mii_bus* %39, i32 %40, i32 %41, i32 %42, i32 0)
  %44 = load i32, i32* @MV_INDIRECT_WRITE, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @MV_INDIRECT_ADDR_S, align 4
  %47 = shl i32 %45, %46
  %48 = or i32 %44, %47
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %13, align 4
  %51 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %52 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %51, i32 0, i32 0
  %53 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %52, align 8
  %54 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @MV_INDIRECT_REG_CMD, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 %53(%struct.mii_bus* %54, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %25, %16
  ret void
}

declare dso_local i32 @mvsw61xx_wait_mask_raw(%struct.mii_bus*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
