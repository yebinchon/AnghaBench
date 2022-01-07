; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_hw_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.fe_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 (%struct.fe_priv*)*, i32 (%struct.fe_priv*, i32)* }

@fe_handle_irq = common dso_local global i32 0, align 4
@FE_REG_DLY_INT_CFG = common dso_local global i64 0, align 8
@fe_reg_table = common dso_local global i64* null, align 8
@FE_REG_FE_DMA_VID_BASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"unable to get clock\0A\00", align 1
@FE_REG_FE_RST_GL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @fe_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fe_hw_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fe_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.fe_priv* %8, %struct.fe_priv** %4, align 8
  %9 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %10 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @fe_handle_irq, align 4
  %16 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %17 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_name(i32 %18)
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 @devm_request_irq(i32 %11, i32 %14, i32 %15, i32 0, i32 %19, %struct.net_device* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %117

26:                                               ; preds = %1
  %27 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %28 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32 (%struct.fe_priv*, i32)*, i32 (%struct.fe_priv*, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.fe_priv*, i32)* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %35 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i32 (%struct.fe_priv*, i32)*, i32 (%struct.fe_priv*, i32)** %37, align 8
  %39 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 %38(%struct.fe_priv* %39, i32 %42)
  br label %50

44:                                               ; preds = %26
  %45 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @fe_hw_set_macaddr(%struct.fe_priv* %45, i32 %48)
  br label %50

50:                                               ; preds = %44, %33
  %51 = load i64, i64* @FE_REG_DLY_INT_CFG, align 8
  %52 = call i32 @fe_reg_w32(i32 0, i64 %51)
  %53 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %54 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %59 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %57, %62
  %64 = call i32 @fe_int_disable(i32 %63)
  %65 = load i64*, i64** @fe_reg_table, align 8
  %66 = load i64, i64* @FE_REG_FE_DMA_VID_BASE, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %89, %70
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %72, 16
  br i1 %73, label %74, label %92

74:                                               ; preds = %71
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  %77 = shl i32 %76, 16
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i64*, i64** @fe_reg_table, align 8
  %81 = load i64, i64* @FE_REG_FE_DMA_VID_BASE, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = mul nsw i32 %84, 2
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %83, %86
  %88 = call i32 @fe_w32(i32 %79, i64 %87)
  br label %89

89:                                               ; preds = %74
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 2
  store i32 %91, i32* %5, align 4
  br label %71

92:                                               ; preds = %71
  br label %93

93:                                               ; preds = %92, %50
  %94 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %95 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i64 (%struct.fe_priv*)*, i64 (%struct.fe_priv*)** %97, align 8
  %99 = load %struct.fe_priv*, %struct.fe_priv** %4, align 8
  %100 = call i64 %98(%struct.fe_priv* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %93
  %103 = load %struct.net_device*, %struct.net_device** %3, align 8
  %104 = call i32 @netdev_err(%struct.net_device* %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %93
  %106 = load i64*, i64** @fe_reg_table, align 8
  %107 = load i64, i64* @FE_REG_FE_RST_GL, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load i64, i64* @FE_REG_FE_RST_GL, align 8
  %113 = call i32 @fe_reg_w32(i32 1, i64 %112)
  %114 = load i64, i64* @FE_REG_FE_RST_GL, align 8
  %115 = call i32 @fe_reg_w32(i32 0, i64 %114)
  br label %116

116:                                              ; preds = %111, %105
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %24
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @fe_hw_set_macaddr(%struct.fe_priv*, i32) #1

declare dso_local i32 @fe_reg_w32(i32, i64) #1

declare dso_local i32 @fe_int_disable(i32) #1

declare dso_local i32 @fe_w32(i32, i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
