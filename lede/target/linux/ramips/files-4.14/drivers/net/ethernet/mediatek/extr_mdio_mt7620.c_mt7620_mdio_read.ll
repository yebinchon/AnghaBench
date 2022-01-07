; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio_mt7620.c_mt7620_mdio_read.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mdio_mt7620.c_mt7620_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.fe_priv* }
%struct.fe_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mt7620_gsw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7620_mdio_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fe_priv*, align 8
  %8 = alloca %struct.mt7620_gsw*, align 8
  store %struct.mii_bus* %0, %struct.mii_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %10 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %9, i32 0, i32 0
  %11 = load %struct.fe_priv*, %struct.fe_priv** %10, align 8
  store %struct.fe_priv* %11, %struct.fe_priv** %7, align 8
  %12 = load %struct.fe_priv*, %struct.fe_priv** %7, align 8
  %13 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.mt7620_gsw*
  store %struct.mt7620_gsw* %17, %struct.mt7620_gsw** %8, align 8
  %18 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %8, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @_mt7620_mii_read(%struct.mt7620_gsw* %18, i32 %19, i32 %20)
  ret i32 %21
}

declare dso_local i32 @_mt7620_mii_read(%struct.mt7620_gsw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
