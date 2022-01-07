; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_write.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { %struct.mii_bus* }
%struct.mii_bus = type { i32, i32 (%struct.mii_bus*, i32, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar8xxx_write(%struct.ar8xxx_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ar8xxx_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mii_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %12 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %11, i32 0, i32 0
  %13 = load %struct.mii_bus*, %struct.mii_bus** %12, align 8
  store %struct.mii_bus* %13, %struct.mii_bus** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @split_addr(i32 %14, i32* %8, i32* %9, i32* %10)
  %16 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %17 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %20 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %19, i32 0, i32 1
  %21 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %20, align 8
  %22 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 %21(%struct.mii_bus* %22, i32 24, i32 0, i32 %23)
  %25 = call i32 (...) @wait_for_page_switch()
  %26 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %4, align 8
  %27 = load i32, i32* %9, align 4
  %28 = or i32 16, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ar8xxx_mii_write32(%struct.ar8xxx_priv* %26, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.mii_bus*, %struct.mii_bus** %7, align 8
  %33 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  ret void
}

declare dso_local i32 @split_addr(i32, i32*, i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wait_for_page_switch(...) #1

declare dso_local i32 @ar8xxx_mii_write32(%struct.ar8xxx_priv*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
