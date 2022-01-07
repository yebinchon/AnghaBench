; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_rmw.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_rmw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { %struct.mii_bus* }
%struct.mii_bus = type { i32, i32 (%struct.mii_bus*, i32, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar8xxx_rmw(%struct.ar8xxx_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ar8xxx_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mii_bus*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %15 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %14, i32 0, i32 0
  %16 = load %struct.mii_bus*, %struct.mii_bus** %15, align 8
  store %struct.mii_bus* %16, %struct.mii_bus** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @split_addr(i32 %17, i32* %10, i32* %11, i32* %12)
  %19 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %20 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %23 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %22, i32 0, i32 1
  %24 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %23, align 8
  %25 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 %24(%struct.mii_bus* %25, i32 24, i32 0, i32 %26)
  %28 = call i32 (...) @wait_for_page_switch()
  %29 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %30 = load i32, i32* %11, align 4
  %31 = or i32 16, %30
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @ar8xxx_mii_read32(%struct.ar8xxx_priv* %29, i32 %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %7, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %13, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %13, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %13, align 4
  %41 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %5, align 8
  %42 = load i32, i32* %11, align 4
  %43 = or i32 16, %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @ar8xxx_mii_write32(%struct.ar8xxx_priv* %41, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.mii_bus*, %struct.mii_bus** %9, align 8
  %48 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %13, align 4
  ret i32 %50
}

declare dso_local i32 @split_addr(i32, i32*, i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wait_for_page_switch(...) #1

declare dso_local i32 @ar8xxx_mii_read32(%struct.ar8xxx_priv*, i32, i32) #1

declare dso_local i32 @ar8xxx_mii_write32(%struct.ar8xxx_priv*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
