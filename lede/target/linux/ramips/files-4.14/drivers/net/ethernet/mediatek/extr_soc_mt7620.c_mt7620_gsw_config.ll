; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_soc_mt7620.c_mt7620_gsw_config.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_soc_mt7620.c_mt7620_gsw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mt7620_gsw = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fe_priv*)* @mt7620_gsw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7620_gsw_config(%struct.fe_priv* %0) #0 {
  %2 = alloca %struct.fe_priv*, align 8
  %3 = alloca %struct.mt7620_gsw*, align 8
  store %struct.fe_priv* %0, %struct.fe_priv** %2, align 8
  %4 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %5 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.mt7620_gsw*
  store %struct.mt7620_gsw* %9, %struct.mt7620_gsw** %3, align 8
  %10 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %11 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %35

14:                                               ; preds = %1
  %15 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %16 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @mdiobus_get_phy(i32* %17, i32 31)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %14
  %21 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %22 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %3, align 8
  %25 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @mt7530_probe(i32 %23, i32* %26, i32* null, i32 0)
  %28 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %29 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %32 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @mt7530_probe(i32 %30, i32* null, i32* %33, i32 1)
  br label %43

35:                                               ; preds = %14, %1
  %36 = load %struct.fe_priv*, %struct.fe_priv** %2, align 8
  %37 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %3, align 8
  %40 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @mt7530_probe(i32 %38, i32* %41, i32* null, i32 1)
  br label %43

43:                                               ; preds = %35, %20
  ret i32 0
}

declare dso_local i64 @mdiobus_get_phy(i32*, i32) #1

declare dso_local i32 @mt7530_probe(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
