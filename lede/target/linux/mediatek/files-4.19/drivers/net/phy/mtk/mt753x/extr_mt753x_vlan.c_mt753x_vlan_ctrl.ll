; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_vlan.c_mt753x_vlan_ctrl.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_vlan.c_mt753x_vlan_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32 }

@VTCR = common dso_local global i32 0, align 4
@VTCR_BUSY = common dso_local global i32 0, align 4
@VTCR_FUNC_S = common dso_local global i32 0, align 4
@VTCR_FUNC_M = common dso_local global i32 0, align 4
@VTCR_VID_M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"vtcr timeout\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt753x_vlan_ctrl(%struct.gsw_mt753x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gsw_mt753x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %10 = load i32, i32* @VTCR, align 4
  %11 = load i32, i32* @VTCR_BUSY, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @VTCR_FUNC_S, align 4
  %14 = shl i32 %12, %13
  %15 = load i32, i32* @VTCR_FUNC_M, align 4
  %16 = and i32 %14, %15
  %17 = or i32 %11, %16
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @VTCR_VID_M, align 4
  %20 = and i32 %18, %19
  %21 = or i32 %17, %20
  %22 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %9, i32 %10, i32 %21)
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %37, %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 300
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %28 = load i32, i32* @VTCR, align 4
  %29 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @VTCR_BUSY, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %40

35:                                               ; preds = %26
  %36 = call i32 @usleep_range(i32 1000, i32 1100)
  br label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %23

40:                                               ; preds = %34, %23
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 300
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %45 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_info(i32 %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %43, %40
  ret void
}

declare dso_local i32 @mt753x_reg_write(%struct.gsw_mt753x*, i32, i32) #1

declare dso_local i32 @mt753x_reg_read(%struct.gsw_mt753x*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
