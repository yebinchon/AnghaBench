; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_mii_write32.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_mii_write32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { %struct.TYPE_2__*, %struct.mii_bus* }
%struct.TYPE_2__ = type { i64 }
%struct.mii_bus = type { i32 (%struct.mii_bus*, i32, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar8xxx_mii_write32(%struct.ar8xxx_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ar8xxx_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mii_bus*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %13 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %12, i32 0, i32 1
  %14 = load %struct.mii_bus*, %struct.mii_bus** %13, align 8
  store %struct.mii_bus* %14, %struct.mii_bus** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = and i32 %15, 65535
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = ashr i32 %17, 16
  store i32 %18, i32* %11, align 4
  %19 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %20 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %4
  %26 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %27 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %26, i32 0, i32 0
  %28 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %27, align 8
  %29 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 %28(%struct.mii_bus* %29, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %35 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %34, i32 0, i32 0
  %36 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %35, align 8
  %37 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  %41 = load i32, i32* %11, align 4
  %42 = call i32 %36(%struct.mii_bus* %37, i32 %38, i32 %40, i32 %41)
  br label %61

43:                                               ; preds = %4
  %44 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %45 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %44, i32 0, i32 0
  %46 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %45, align 8
  %47 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  %51 = load i32, i32* %11, align 4
  %52 = call i32 %46(%struct.mii_bus* %47, i32 %48, i32 %50, i32 %51)
  %53 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %54 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %53, i32 0, i32 0
  %55 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %54, align 8
  %56 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 %55(%struct.mii_bus* %56, i32 %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %43, %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
