; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_phy_save.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8306.c_rtl_phy_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.rtl_phyregs = type { i8*, i8*, i8* }

@NWAY = common dso_local global i32 0, align 4
@SPEED = common dso_local global i32 0, align 4
@DUPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.switch_dev*, i32, %struct.rtl_phyregs*)* @rtl_phy_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_phy_save(%struct.switch_dev* %0, i32 %1, %struct.rtl_phyregs* %2) #0 {
  %4 = alloca %struct.switch_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl_phyregs*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rtl_phyregs* %2, %struct.rtl_phyregs** %6, align 8
  %7 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @NWAY, align 4
  %10 = call i32 @RTL_PORT_REG(i32 %8, i32 %9)
  %11 = call i8* @rtl_get(%struct.switch_dev* %7, i32 %10)
  %12 = load %struct.rtl_phyregs*, %struct.rtl_phyregs** %6, align 8
  %13 = getelementptr inbounds %struct.rtl_phyregs, %struct.rtl_phyregs* %12, i32 0, i32 2
  store i8* %11, i8** %13, align 8
  %14 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SPEED, align 4
  %17 = call i32 @RTL_PORT_REG(i32 %15, i32 %16)
  %18 = call i8* @rtl_get(%struct.switch_dev* %14, i32 %17)
  %19 = load %struct.rtl_phyregs*, %struct.rtl_phyregs** %6, align 8
  %20 = getelementptr inbounds %struct.rtl_phyregs, %struct.rtl_phyregs* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @DUPLEX, align 4
  %24 = call i32 @RTL_PORT_REG(i32 %22, i32 %23)
  %25 = call i8* @rtl_get(%struct.switch_dev* %21, i32 %24)
  %26 = load %struct.rtl_phyregs*, %struct.rtl_phyregs** %6, align 8
  %27 = getelementptr inbounds %struct.rtl_phyregs, %struct.rtl_phyregs* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  ret void
}

declare dso_local i8* @rtl_get(%struct.switch_dev*, i32) #1

declare dso_local i32 @RTL_PORT_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
