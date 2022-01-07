; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_hw_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.rtl_priv = type { i64 }

@RTL_REG_VLAN_ENABLE = common dso_local global i32 0, align 4
@RTL_REG_VLAN_FILTER = common dso_local global i32 0, align 4
@RTL_REG_EN_TRUNK = common dso_local global i32 0, align 4
@RTL_REG_TRUNK_PORTSEL = common dso_local global i32 0, align 4
@RTL_REG_CPUPORT = common dso_local global i32 0, align 4
@RTL_REG_EN_CPUPORT = common dso_local global i32 0, align 4
@RTL_REG_EN_TAG_OUT = common dso_local global i32 0, align 4
@RTL_REG_EN_TAG_IN = common dso_local global i32 0, align 4
@RTL_REG_EN_TAG_CLR = common dso_local global i32 0, align 4
@RTL8306_NUM_VLANS = common dso_local global i32 0, align 4
@VID = common dso_local global i32 0, align 4
@PORTMASK = common dso_local global i32 0, align 4
@RTL8306_NUM_PORTS = common dso_local global i32 0, align 4
@PVID = common dso_local global i32 0, align 4
@NULL_VID_REPLACE = common dso_local global i32 0, align 4
@VID_INSERT = common dso_local global i32 0, align 4
@TAG_INSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.switch_dev*)* @rtl_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_hw_init(%struct.switch_dev* %0) #0 {
  %2 = alloca %struct.switch_dev*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %2, align 8
  %7 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %8 = call %struct.rtl_priv* @to_rtl(%struct.switch_dev* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %10 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 1, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %14 = load i32, i32* @RTL_REG_VLAN_ENABLE, align 4
  %15 = call i32 @rtl_set(%struct.switch_dev* %13, i32 %14, i32 0)
  %16 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %17 = load i32, i32* @RTL_REG_VLAN_FILTER, align 4
  %18 = call i32 @rtl_set(%struct.switch_dev* %16, i32 %17, i32 0)
  %19 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %20 = load i32, i32* @RTL_REG_EN_TRUNK, align 4
  %21 = call i32 @rtl_set(%struct.switch_dev* %19, i32 %20, i32 0)
  %22 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %23 = load i32, i32* @RTL_REG_TRUNK_PORTSEL, align 4
  %24 = call i32 @rtl_set(%struct.switch_dev* %22, i32 %23, i32 0)
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %26 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %1
  %30 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %31 = load i32, i32* @RTL_REG_CPUPORT, align 4
  %32 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %33 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @rtl_set(%struct.switch_dev* %30, i32 %31, i32 %34)
  %36 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %37 = load i32, i32* @RTL_REG_EN_CPUPORT, align 4
  %38 = call i32 @rtl_set(%struct.switch_dev* %36, i32 %37, i32 1)
  br label %46

39:                                               ; preds = %1
  %40 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %41 = load i32, i32* @RTL_REG_CPUPORT, align 4
  %42 = call i32 @rtl_set(%struct.switch_dev* %40, i32 %41, i32 7)
  %43 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %44 = load i32, i32* @RTL_REG_EN_CPUPORT, align 4
  %45 = call i32 @rtl_set(%struct.switch_dev* %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %39, %29
  %47 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %48 = load i32, i32* @RTL_REG_EN_TAG_OUT, align 4
  %49 = call i32 @rtl_set(%struct.switch_dev* %47, i32 %48, i32 0)
  %50 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %51 = load i32, i32* @RTL_REG_EN_TAG_IN, align 4
  %52 = call i32 @rtl_set(%struct.switch_dev* %50, i32 %51, i32 0)
  %53 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %54 = load i32, i32* @RTL_REG_EN_TAG_CLR, align 4
  %55 = call i32 @rtl_set(%struct.switch_dev* %53, i32 %54, i32 0)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %72, %46
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @RTL8306_NUM_VLANS, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %56
  %61 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @VID, align 4
  %64 = call i32 @RTL_VLAN_REG(i32 %62, i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @rtl_set(%struct.switch_dev* %61, i32 %64, i32 %65)
  %67 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @PORTMASK, align 4
  %70 = call i32 @RTL_VLAN_REG(i32 %68, i32 %69)
  %71 = call i32 @rtl_set(%struct.switch_dev* %67, i32 %70, i32 0)
  br label %72

72:                                               ; preds = %60
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %56

75:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %128, %75
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @RTL8306_NUM_PORTS, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %131

80:                                               ; preds = %76
  %81 = load i32, i32* %5, align 4
  %82 = shl i32 1, %81
  %83 = load i32, i32* %4, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load i32, i32* @RTL8306_NUM_PORTS, align 4
  %87 = shl i32 1, %86
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* %4, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = sext i32 %91 to i64
  store i64 %92, i64* %6, align 8
  br label %99

93:                                               ; preds = %80
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %5, align 4
  %96 = shl i32 1, %95
  %97 = or i32 %94, %96
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %6, align 8
  br label %99

99:                                               ; preds = %93, %85
  %100 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @PORTMASK, align 4
  %103 = call i32 @RTL_VLAN_REG(i32 %101, i32 %102)
  %104 = load i64, i64* %6, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 @rtl_set(%struct.switch_dev* %100, i32 %103, i32 %105)
  %107 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @PVID, align 4
  %110 = call i32 @RTL_PORT_REG(i32 %108, i32 %109)
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @rtl_set(%struct.switch_dev* %107, i32 %110, i32 %111)
  %113 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @NULL_VID_REPLACE, align 4
  %116 = call i32 @RTL_PORT_REG(i32 %114, i32 %115)
  %117 = call i32 @rtl_set(%struct.switch_dev* %113, i32 %116, i32 1)
  %118 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @VID_INSERT, align 4
  %121 = call i32 @RTL_PORT_REG(i32 %119, i32 %120)
  %122 = call i32 @rtl_set(%struct.switch_dev* %118, i32 %121, i32 1)
  %123 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* @TAG_INSERT, align 4
  %126 = call i32 @RTL_PORT_REG(i32 %124, i32 %125)
  %127 = call i32 @rtl_set(%struct.switch_dev* %123, i32 %126, i32 3)
  br label %128

128:                                              ; preds = %99
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %76

131:                                              ; preds = %76
  %132 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %133 = call i32 @rtl_hw_apply(%struct.switch_dev* %132)
  ret void
}

declare dso_local %struct.rtl_priv* @to_rtl(%struct.switch_dev*) #1

declare dso_local i32 @rtl_set(%struct.switch_dev*, i32, i32) #1

declare dso_local i32 @RTL_VLAN_REG(i32, i32) #1

declare dso_local i32 @RTL_PORT_REG(i32, i32) #1

declare dso_local i32 @rtl_hw_apply(%struct.switch_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
