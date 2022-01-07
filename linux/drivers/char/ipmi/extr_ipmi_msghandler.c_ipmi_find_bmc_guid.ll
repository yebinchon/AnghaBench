; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_find_bmc_guid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_find_bmc_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmc_device = type { i32 }
%struct.device_driver = type { i32 }
%struct.device = type { i32 }

@__find_bmc_guid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bmc_device* (%struct.device_driver*, i32*)* @ipmi_find_bmc_guid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bmc_device* @ipmi_find_bmc_guid(%struct.device_driver* %0, i32* %1) #0 {
  %3 = alloca %struct.device_driver*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.bmc_device*, align 8
  store %struct.device_driver* %0, %struct.device_driver** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.bmc_device* null, %struct.bmc_device** %6, align 8
  %7 = load %struct.device_driver*, %struct.device_driver** %3, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* @__find_bmc_guid, align 4
  %10 = call %struct.device* @driver_find_device(%struct.device_driver* %7, i32* null, i32* %8, i32 %9)
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = icmp ne %struct.device* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.bmc_device* @to_bmc_device(%struct.device* %14)
  store %struct.bmc_device* %15, %struct.bmc_device** %6, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call i32 @put_device(%struct.device* %16)
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.bmc_device*, %struct.bmc_device** %6, align 8
  ret %struct.bmc_device* %19
}

declare dso_local %struct.device* @driver_find_device(%struct.device_driver*, i32*, i32*, i32) #1

declare dso_local %struct.bmc_device* @to_bmc_device(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
