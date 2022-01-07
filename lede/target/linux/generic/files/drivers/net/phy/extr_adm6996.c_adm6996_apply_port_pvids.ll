; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_apply_port_pvids.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_apply_port_pvids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm6996_priv = type { i64, i32, i32* }

@ADM_NUM_PORTS = common dso_local global i32 0, align 4
@adm_portcfg = common dso_local global i32* null, align 8
@ADM_PORTCFG_PVID_MASK = common dso_local global i32 0, align 4
@ADM6996L = common dso_local global i64 0, align 8
@ADM_P0_PVID = common dso_local global i32 0, align 4
@ADM_P1_PVID = common dso_local global i32 0, align 4
@ADM_OTBE_P2_PVID = common dso_local global i32 0, align 4
@ADM_P2_PVID_MASK = common dso_local global i32 0, align 4
@ADM_P3_P4_PVID = common dso_local global i32 0, align 4
@ADM_P5_PVID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adm6996_priv*)* @adm6996_apply_port_pvids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm6996_apply_port_pvids(%struct.adm6996_priv* %0) #0 {
  %2 = alloca %struct.adm6996_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.adm6996_priv* %0, %struct.adm6996_priv** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %60, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @ADM_NUM_PORTS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %63

9:                                                ; preds = %5
  %10 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %11 = load i32*, i32** @adm_portcfg, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @r16(%struct.adm6996_priv* %10, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @ADM_PORTCFG_PVID_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %22 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ADM_PORTCFG_PVID(i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %32 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ADM6996L, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %9
  %37 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %38 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, 16
  store i32 %46, i32* %3, align 4
  br label %50

47:                                               ; preds = %36
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %48, -17
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %9
  %52 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %53 = load i32*, i32** @adm_portcfg, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @w16(%struct.adm6996_priv* %52, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %5

63:                                               ; preds = %5
  %64 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %65 = load i32, i32* @ADM_P0_PVID, align 4
  %66 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %67 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ADM_P0_PVID_VAL(i32 %70)
  %72 = call i32 @w16(%struct.adm6996_priv* %64, i32 %65, i32 %71)
  %73 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %74 = load i32, i32* @ADM_P1_PVID, align 4
  %75 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %76 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ADM_P1_PVID_VAL(i32 %79)
  %81 = call i32 @w16(%struct.adm6996_priv* %73, i32 %74, i32 %80)
  %82 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %83 = load i32, i32* @ADM_OTBE_P2_PVID, align 4
  %84 = call i32 @r16(%struct.adm6996_priv* %82, i32 %83)
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* @ADM_P2_PVID_MASK, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %3, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %3, align 4
  %89 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %90 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ADM_P2_PVID_VAL(i32 %93)
  %95 = load i32, i32* %3, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %3, align 4
  %97 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %98 = load i32, i32* @ADM_OTBE_P2_PVID, align 4
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @w16(%struct.adm6996_priv* %97, i32 %98, i32 %99)
  %101 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %102 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ADM_P3_PVID_VAL(i32 %105)
  store i32 %106, i32* %3, align 4
  %107 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %108 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 4
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ADM_P4_PVID_VAL(i32 %111)
  %113 = load i32, i32* %3, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %3, align 4
  %115 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %116 = load i32, i32* @ADM_P3_P4_PVID, align 4
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @w16(%struct.adm6996_priv* %115, i32 %116, i32 %117)
  %119 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %120 = load i32, i32* @ADM_P5_PVID, align 4
  %121 = call i32 @r16(%struct.adm6996_priv* %119, i32 %120)
  store i32 %121, i32* %3, align 4
  %122 = load i32, i32* @ADM_P2_PVID_MASK, align 4
  %123 = xor i32 %122, -1
  %124 = load i32, i32* %3, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %3, align 4
  %126 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %127 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 5
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ADM_P5_PVID_VAL(i32 %130)
  %132 = load i32, i32* %3, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %3, align 4
  %134 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %135 = load i32, i32* @ADM_P5_PVID, align 4
  %136 = load i32, i32* %3, align 4
  %137 = call i32 @w16(%struct.adm6996_priv* %134, i32 %135, i32 %136)
  ret void
}

declare dso_local i32 @r16(%struct.adm6996_priv*, i32) #1

declare dso_local i32 @ADM_PORTCFG_PVID(i32) #1

declare dso_local i32 @w16(%struct.adm6996_priv*, i32, i32) #1

declare dso_local i32 @ADM_P0_PVID_VAL(i32) #1

declare dso_local i32 @ADM_P1_PVID_VAL(i32) #1

declare dso_local i32 @ADM_P2_PVID_VAL(i32) #1

declare dso_local i32 @ADM_P3_PVID_VAL(i32) #1

declare dso_local i32 @ADM_P4_PVID_VAL(i32) #1

declare dso_local i32 @ADM_P5_PVID_VAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
