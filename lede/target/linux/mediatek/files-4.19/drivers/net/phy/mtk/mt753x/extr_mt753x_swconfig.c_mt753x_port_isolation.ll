; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_swconfig.c_mt753x_port_isolation.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_swconfig.c_mt753x_port_isolation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32 }

@MT753X_NUM_PORTS = common dso_local global i32 0, align 4
@PORT_MATRIX_S = common dso_local global i32 0, align 4
@PORT_MATRIX_M = common dso_local global i32 0, align 4
@STAG_VPID_S = common dso_local global i32 0, align 4
@VA_TRANSPARENT_PORT = common dso_local global i32 0, align 4
@VLAN_ATTR_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsw_mt753x*)* @mt753x_port_isolation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt753x_port_isolation(%struct.gsw_mt753x* %0) #0 {
  %2 = alloca %struct.gsw_mt753x*, align 8
  %3 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MT753X_NUM_PORTS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @PCR(i32 %10)
  %12 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %13 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @BIT(i32 %14)
  %16 = load i32, i32* @PORT_MATRIX_S, align 4
  %17 = shl i32 %15, %16
  %18 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %9, i32 %11, i32 %17)
  br label %19

19:                                               ; preds = %8
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %4

22:                                               ; preds = %4
  %23 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %24 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %25 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @PCR(i32 %26)
  %28 = load i32, i32* @PORT_MATRIX_M, align 4
  %29 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %23, i32 %27, i32 %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %45, %22
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @MT753X_NUM_PORTS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @PVC(i32 %36)
  %38 = load i32, i32* @STAG_VPID_S, align 4
  %39 = shl i32 33024, %38
  %40 = load i32, i32* @VA_TRANSPARENT_PORT, align 4
  %41 = load i32, i32* @VLAN_ATTR_S, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %39, %42
  %44 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %35, i32 %37, i32 %43)
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %30

48:                                               ; preds = %30
  ret void
}

declare dso_local i32 @mt753x_reg_write(%struct.gsw_mt753x*, i32, i32) #1

declare dso_local i32 @PCR(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @PVC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
