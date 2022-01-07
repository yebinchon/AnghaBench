; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_phy_fixup.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_phy_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar8xxx_priv*, i32)* @ar8327_phy_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8327_phy_fixup(%struct.ar8xxx_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ar8xxx_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ar8xxx_priv* %0, %struct.ar8xxx_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %6 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %32 [
    i32 1, label %8
    i32 2, label %15
    i32 4, label %19
  ]

8:                                                ; preds = %2
  %9 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @ar8xxx_phy_dbg_write(%struct.ar8xxx_priv* %9, i32 %10, i32 0, i32 746)
  %12 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ar8xxx_phy_dbg_write(%struct.ar8xxx_priv* %12, i32 %13, i32 61, i32 26784)
  br label %32

15:                                               ; preds = %2
  %16 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ar8xxx_phy_mmd_write(%struct.ar8xxx_priv* %16, i32 %17, i32 7, i32 60, i32 0)
  br label %19

19:                                               ; preds = %2, %15
  %20 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @ar8xxx_phy_mmd_write(%struct.ar8xxx_priv* %20, i32 %21, i32 3, i32 32781, i32 32831)
  %23 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @ar8xxx_phy_dbg_write(%struct.ar8xxx_priv* %23, i32 %24, i32 61, i32 26720)
  %26 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @ar8xxx_phy_dbg_write(%struct.ar8xxx_priv* %26, i32 %27, i32 5, i32 11334)
  %29 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @ar8xxx_phy_dbg_write(%struct.ar8xxx_priv* %29, i32 %30, i32 60, i32 24576)
  br label %32

32:                                               ; preds = %2, %19, %8
  ret void
}

declare dso_local i32 @ar8xxx_phy_dbg_write(%struct.ar8xxx_priv*, i32, i32, i32) #1

declare dso_local i32 @ar8xxx_phy_mmd_write(%struct.ar8xxx_priv*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
