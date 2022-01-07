; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_perform_reset.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_perform_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm6996_priv = type { i64, i32*, i64*, i64*, i64*, i64, i64 }

@ADM_NUM_PORTS = common dso_local global i32 0, align 4
@adm_portcfg = common dso_local global i32* null, align 8
@ADM_PORTCFG_INIT = common dso_local global i32 0, align 4
@ADM_PORTCFG_CPU = common dso_local global i32 0, align 4
@ADM6996M = common dso_local global i64 0, align 8
@ADM6996FC = common dso_local global i64 0, align 8
@ADM_PHY_PORTS = common dso_local global i32 0, align 4
@ADM_PHYCFG_INIT = common dso_local global i32 0, align 4
@ADM_NUM_VLANS = common dso_local global i32 0, align 4
@ADM_VLAN_PRIOMAP = common dso_local global i32 0, align 4
@ADM6996L = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adm6996_priv*)* @adm6996_perform_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm6996_perform_reset(%struct.adm6996_priv* %0) #0 {
  %2 = alloca %struct.adm6996_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.adm6996_priv* %0, %struct.adm6996_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %20, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @ADM_NUM_PORTS, align 4
  %7 = sub nsw i32 %6, 1
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %4
  %10 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %11 = load i32*, i32** @adm_portcfg, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ADM_PORTCFG_INIT, align 4
  %17 = call i32 @ADM_PORTCFG_PVID(i32 0)
  %18 = or i32 %16, %17
  %19 = call i32 @w16(%struct.adm6996_priv* %10, i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %9
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %4

23:                                               ; preds = %4
  %24 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %25 = load i32*, i32** @adm_portcfg, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 5
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ADM_PORTCFG_CPU, align 4
  %29 = call i32 @w16(%struct.adm6996_priv* %24, i32 %27, i32 %28)
  %30 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %31 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ADM6996M, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %23
  %36 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %37 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ADM6996FC, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %35, %23
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %52, %41
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @ADM_PHY_PORTS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @ADM_PHY_PORT(i32 %48)
  %50 = load i32, i32* @ADM_PHYCFG_INIT, align 4
  %51 = call i32 @w16(%struct.adm6996_priv* %47, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %42

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %35
  %57 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %58 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %57, i32 0, i32 6
  store i64 0, i64* %58, align 8
  %59 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %60 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %59, i32 0, i32 5
  store i64 0, i64* %60, align 8
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %72, %56
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @ADM_NUM_PORTS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %67 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %66, i32 0, i32 4
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %61

75:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %100, %75
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @ADM_NUM_VLANS, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %103

80:                                               ; preds = %76
  %81 = load i32, i32* %3, align 4
  %82 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %83 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  %88 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %89 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %88, i32 0, i32 3
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  store i64 0, i64* %93, align 8
  %94 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %95 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %94, i32 0, i32 2
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %80
  %101 = load i32, i32* %3, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %3, align 4
  br label %76

103:                                              ; preds = %76
  %104 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %105 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @ADM6996M, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %103
  %110 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %111 = load i32, i32* @ADM_VLAN_PRIOMAP, align 4
  %112 = call i32 @w16(%struct.adm6996_priv* %110, i32 %111, i32 0)
  %113 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %114 = call i32 @adm6996_disable_vlan(%struct.adm6996_priv* %113)
  %115 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %116 = call i32 @adm6996_apply_port_pvids(%struct.adm6996_priv* %115)
  br label %132

117:                                              ; preds = %103
  %118 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %119 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @ADM6996L, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %117
  %124 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %125 = load i32, i32* @ADM_VLAN_PRIOMAP, align 4
  %126 = call i32 @w16(%struct.adm6996_priv* %124, i32 %125, i32 0)
  %127 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %128 = call i32 @adm6996_disable_vlan_6996l(%struct.adm6996_priv* %127)
  %129 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %130 = call i32 @adm6996_apply_port_pvids(%struct.adm6996_priv* %129)
  br label %131

131:                                              ; preds = %123, %117
  br label %132

132:                                              ; preds = %131, %109
  ret void
}

declare dso_local i32 @w16(%struct.adm6996_priv*, i32, i32) #1

declare dso_local i32 @ADM_PORTCFG_PVID(i32) #1

declare dso_local i32 @ADM_PHY_PORT(i32) #1

declare dso_local i32 @adm6996_disable_vlan(%struct.adm6996_priv*) #1

declare dso_local i32 @adm6996_apply_port_pvids(%struct.adm6996_priv*) #1

declare dso_local i32 @adm6996_disable_vlan_6996l(%struct.adm6996_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
