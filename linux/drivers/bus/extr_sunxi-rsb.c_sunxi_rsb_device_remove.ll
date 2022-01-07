; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_sunxi-rsb.c_sunxi_rsb_device_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_sunxi-rsb.c_sunxi_rsb_device_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sunxi_rsb_driver = type { i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sunxi_rsb_device_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_rsb_device_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.sunxi_rsb_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.sunxi_rsb_driver* @to_sunxi_rsb_driver(i32 %6)
  store %struct.sunxi_rsb_driver* %7, %struct.sunxi_rsb_driver** %3, align 8
  %8 = load %struct.sunxi_rsb_driver*, %struct.sunxi_rsb_driver** %3, align 8
  %9 = getelementptr inbounds %struct.sunxi_rsb_driver, %struct.sunxi_rsb_driver* %8, i32 0, i32 0
  %10 = load i32 (i32)*, i32 (i32)** %9, align 8
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = call i32 @to_sunxi_rsb_device(%struct.device* %11)
  %13 = call i32 %10(i32 %12)
  ret i32 %13
}

declare dso_local %struct.sunxi_rsb_driver* @to_sunxi_rsb_driver(i32) #1

declare dso_local i32 @to_sunxi_rsb_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
