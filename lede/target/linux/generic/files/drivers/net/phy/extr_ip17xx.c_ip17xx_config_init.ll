; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip17xx_config_init.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip17xx_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.net_device*, %struct.ip17xx_state* }
%struct.net_device = type { i32 }
%struct.ip17xx_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @ip17xx_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip17xx_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.ip17xx_state*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 1
  %9 = load %struct.ip17xx_state*, %struct.ip17xx_state** %8, align 8
  store %struct.ip17xx_state* %9, %struct.ip17xx_state** %4, align 8
  %10 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %11 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %14 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %13, i32 0, i32 1
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call i32 @register_switch(i32* %14, %struct.net_device* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %27

21:                                               ; preds = %1
  %22 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %23 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.ip17xx_state*, %struct.ip17xx_state** %4, align 8
  %25 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %24, i32 0, i32 1
  %26 = call i32 @ip17xx_reset(i32* %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %21, %19
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @register_switch(i32*, %struct.net_device*) #1

declare dso_local i32 @ip17xx_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
