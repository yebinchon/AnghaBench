; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_set_vlan.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_set_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_priv = type { i64 }
%struct.rtl_phyregs = type { i32 }

@RTL_REG_EN_TAG_OUT = common dso_local global i32 0, align 4
@RTL_REG_EN_TAG_IN = common dso_local global i32 0, align 4
@RTL_REG_EN_TAG_CLR = common dso_local global i32 0, align 4
@RTL_REG_VLAN_TAG_AWARE = common dso_local global i32 0, align 4
@RTL_REG_VLAN_FILTER = common dso_local global i32 0, align 4
@RTL8306_NUM_PORTS = common dso_local global i32 0, align 4
@NULL_VID_REPLACE = common dso_local global i32 0, align 4
@VID_INSERT = common dso_local global i32 0, align 4
@TAG_INSERT = common dso_local global i32 0, align 4
@RTL_REG_VLAN_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @rtl_set_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_set_vlan(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca %struct.switch_dev*, align 8
  %5 = alloca %struct.switch_attr*, align 8
  %6 = alloca %struct.switch_val*, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_phyregs, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %4, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %5, align 8
  store %struct.switch_val* %2, %struct.switch_val** %6, align 8
  %11 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %12 = call %struct.rtl_priv* @to_rtl(%struct.switch_dev* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %7, align 8
  %13 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %14 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %18 = load i32, i32* @RTL_REG_EN_TAG_OUT, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %21, %3
  %27 = phi i1 [ false, %3 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @rtl_set(%struct.switch_dev* %17, i32 %18, i32 %28)
  %30 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %31 = load i32, i32* @RTL_REG_EN_TAG_IN, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %36 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %34, %26
  %40 = phi i1 [ false, %26 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @rtl_set(%struct.switch_dev* %30, i32 %31, i32 %41)
  %43 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %44 = load i32, i32* @RTL_REG_EN_TAG_CLR, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %49 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %47, %39
  %53 = phi i1 [ false, %39 ], [ %51, %47 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @rtl_set(%struct.switch_dev* %43, i32 %44, i32 %54)
  %56 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %57 = load i32, i32* @RTL_REG_VLAN_TAG_AWARE, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @rtl_set(%struct.switch_dev* %56, i32 %57, i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %52
  %63 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %64 = load i32, i32* @RTL_REG_VLAN_FILTER, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @rtl_set(%struct.switch_dev* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %52
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %132, %67
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @RTL8306_NUM_PORTS, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %135

72:                                               ; preds = %68
  %73 = load i32, i32* %10, align 4
  %74 = icmp sgt i32 %73, 3
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %77 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %78 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @rtl_phy_save(%struct.switch_dev* %76, i32 %79, %struct.rtl_phyregs* %8)
  br label %81

81:                                               ; preds = %75, %72
  %82 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @NULL_VID_REPLACE, align 4
  %85 = call i32 @RTL_PORT_REG(i32 %83, i32 %84)
  %86 = call i32 @rtl_set(%struct.switch_dev* %82, i32 %85, i32 1)
  %87 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @VID_INSERT, align 4
  %90 = call i32 @RTL_PORT_REG(i32 %88, i32 %89)
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %81
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %96 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %94, %97
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 0, i32 1
  br label %102

101:                                              ; preds = %81
  br label %102

102:                                              ; preds = %101, %93
  %103 = phi i32 [ %100, %93 ], [ 1, %101 ]
  %104 = call i32 @rtl_set(%struct.switch_dev* %87, i32 %90, i32 %103)
  %105 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @TAG_INSERT, align 4
  %108 = call i32 @RTL_PORT_REG(i32 %106, i32 %107)
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %102
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %114 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %112, %115
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 2, i32 1
  br label %120

119:                                              ; preds = %102
  br label %120

120:                                              ; preds = %119, %111
  %121 = phi i32 [ %118, %111 ], [ 3, %119 ]
  %122 = call i32 @rtl_set(%struct.switch_dev* %105, i32 %108, i32 %121)
  %123 = load i32, i32* %10, align 4
  %124 = icmp sgt i32 %123, 3
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %127 = load %struct.switch_val*, %struct.switch_val** %6, align 8
  %128 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @rtl_phy_restore(%struct.switch_dev* %126, i32 %129, %struct.rtl_phyregs* %8)
  br label %131

131:                                              ; preds = %125, %120
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %68

135:                                              ; preds = %68
  %136 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %137 = load i32, i32* @RTL_REG_VLAN_ENABLE, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @rtl_set(%struct.switch_dev* %136, i32 %137, i32 %138)
  ret i32 0
}

declare dso_local %struct.rtl_priv* @to_rtl(%struct.switch_dev*) #1

declare dso_local i32 @rtl_set(%struct.switch_dev*, i32, i32) #1

declare dso_local i32 @rtl_phy_save(%struct.switch_dev*, i32, %struct.rtl_phyregs*) #1

declare dso_local i32 @RTL_PORT_REG(i32, i32) #1

declare dso_local i32 @rtl_phy_restore(%struct.switch_dev*, i32, %struct.rtl_phyregs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
