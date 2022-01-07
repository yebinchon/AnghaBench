; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_mdio.c_mt753x_mii_rw.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_mdio.c_mt753x_mii_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32 }

@PHY_IAC = common dso_local global i32 0, align 4
@PHY_ACS_ST = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@MDIO_ST_S = common dso_local global i32 0, align 4
@MDIO_CMD_S = common dso_local global i32 0, align 4
@MDIO_CMD_M = common dso_local global i32 0, align 4
@MDIO_PHY_ADDR_S = common dso_local global i32 0, align 4
@MDIO_PHY_ADDR_M = common dso_local global i32 0, align 4
@MDIO_REG_ADDR_S = common dso_local global i32 0, align 4
@MDIO_REG_ADDR_M = common dso_local global i32 0, align 4
@MDIO_CMD_WRITE = common dso_local global i32 0, align 4
@MDIO_CMD_ADDR = common dso_local global i32 0, align 4
@MDIO_RW_DATA_M = common dso_local global i32 0, align 4
@MDIO_CMD_READ = common dso_local global i32 0, align 4
@MDIO_CMD_READ_C45 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsw_mt753x*, i32, i32, i32, i32, i32)* @mt753x_mii_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt753x_mii_rw(%struct.gsw_mt753x* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gsw_mt753x*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %17, align 4
  store i32 100000, i32* %16, align 4
  %18 = call i32 (...) @ktime_get()
  %19 = load i32, i32* %16, align 4
  %20 = call i32 @ktime_add_us(i32 %18, i32 %19)
  store i32 %20, i32* %14, align 4
  br label %21

21:                                               ; preds = %6, %38
  %22 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %8, align 8
  %23 = load i32, i32* @PHY_IAC, align 4
  %24 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %22, i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* @PHY_ACS_ST, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %39

30:                                               ; preds = %21
  %31 = call i32 (...) @ktime_get()
  %32 = load i32, i32* %14, align 4
  %33 = call i64 @ktime_compare(i32 %31, i32 %32)
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @ETIMEDOUT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %119

38:                                               ; preds = %30
  br label %21

39:                                               ; preds = %29
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @MDIO_ST_S, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @MDIO_CMD_S, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* @MDIO_CMD_M, align 4
  %47 = and i32 %45, %46
  %48 = or i32 %42, %47
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @MDIO_PHY_ADDR_S, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* @MDIO_PHY_ADDR_M, align 4
  %53 = and i32 %51, %52
  %54 = or i32 %48, %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @MDIO_REG_ADDR_S, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* @MDIO_REG_ADDR_M, align 4
  %59 = and i32 %57, %58
  %60 = or i32 %54, %59
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @MDIO_CMD_WRITE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %39
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @MDIO_CMD_ADDR, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64, %39
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @MDIO_RW_DATA_M, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* %15, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %68, %64
  %75 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %8, align 8
  %76 = load i32, i32* @PHY_IAC, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* @PHY_ACS_ST, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %75, i32 %76, i32 %79)
  store i32 100000, i32* %16, align 4
  %81 = call i32 (...) @ktime_get()
  %82 = load i32, i32* %16, align 4
  %83 = call i32 @ktime_add_us(i32 %81, i32 %82)
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %74, %101
  %85 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %8, align 8
  %86 = load i32, i32* @PHY_IAC, align 4
  %87 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %85, i32 %86)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* @PHY_ACS_ST, align 4
  %90 = and i32 %88, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %102

93:                                               ; preds = %84
  %94 = call i32 (...) @ktime_get()
  %95 = load i32, i32* %14, align 4
  %96 = call i64 @ktime_compare(i32 %94, i32 %95)
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* @ETIMEDOUT, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %7, align 4
  br label %119

101:                                              ; preds = %93
  br label %84

102:                                              ; preds = %92
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @MDIO_CMD_READ, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @MDIO_CMD_READ_C45, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %106, %102
  %111 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %8, align 8
  %112 = load i32, i32* @PHY_IAC, align 4
  %113 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %111, i32 %112)
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* @MDIO_RW_DATA_M, align 4
  %116 = and i32 %114, %115
  store i32 %116, i32* %17, align 4
  br label %117

117:                                              ; preds = %110, %106
  %118 = load i32, i32* %17, align 4
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %117, %98, %35
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i32 @ktime_add_us(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @mt753x_reg_read(%struct.gsw_mt753x*, i32) #1

declare dso_local i64 @ktime_compare(i32, i32) #1

declare dso_local i32 @mt753x_reg_write(%struct.gsw_mt753x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
