; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-imx6q.c_ar8031_phy_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-imx6q.c_ar8031_phy_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @ar8031_phy_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8031_phy_fixup(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %4 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %5 = call i32 @phy_write(%struct.phy_device* %4, i32 13, i32 7)
  %6 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %7 = call i32 @phy_write(%struct.phy_device* %6, i32 14, i32 32790)
  %8 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %9 = call i32 @phy_write(%struct.phy_device* %8, i32 13, i32 16391)
  %10 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %11 = call i32 @phy_read(%struct.phy_device* %10, i32 14)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 65507
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, 24
  store i32 %15, i32* %3, align 4
  %16 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @phy_write(%struct.phy_device* %16, i32 14, i32 %17)
  %19 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %20 = call i32 @phy_write(%struct.phy_device* %19, i32 29, i32 5)
  %21 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %22 = call i32 @phy_read(%struct.phy_device* %21, i32 30)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, 256
  store i32 %24, i32* %3, align 4
  %25 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @phy_write(%struct.phy_device* %25, i32 30, i32 %26)
  ret i32 0
}

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
