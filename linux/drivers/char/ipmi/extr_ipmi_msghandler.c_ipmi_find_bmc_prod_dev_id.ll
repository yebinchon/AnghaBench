; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_find_bmc_prod_dev_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c_ipmi_find_bmc_prod_dev_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmc_device = type { i32 }
%struct.device_driver = type { i32 }
%struct.prod_dev_id = type { i32, i8 }
%struct.device = type { i32 }

@__find_bmc_prod_dev_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bmc_device* (%struct.device_driver*, i32, i8)* @ipmi_find_bmc_prod_dev_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bmc_device* @ipmi_find_bmc_prod_dev_id(%struct.device_driver* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.device_driver*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.prod_dev_id, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.bmc_device*, align 8
  store %struct.device_driver* %0, %struct.device_driver** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %10 = getelementptr inbounds %struct.prod_dev_id, %struct.prod_dev_id* %7, i32 0, i32 0
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.prod_dev_id, %struct.prod_dev_id* %7, i32 0, i32 1
  %13 = load i8, i8* %6, align 1
  store i8 %13, i8* %12, align 4
  store %struct.bmc_device* null, %struct.bmc_device** %9, align 8
  %14 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %15 = load i32, i32* @__find_bmc_prod_dev_id, align 4
  %16 = call %struct.device* @driver_find_device(%struct.device_driver* %14, i32* null, %struct.prod_dev_id* %7, i32 %15)
  store %struct.device* %16, %struct.device** %8, align 8
  %17 = load %struct.device*, %struct.device** %8, align 8
  %18 = icmp ne %struct.device* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.device*, %struct.device** %8, align 8
  %21 = call %struct.bmc_device* @to_bmc_device(%struct.device* %20)
  store %struct.bmc_device* %21, %struct.bmc_device** %9, align 8
  %22 = load %struct.device*, %struct.device** %8, align 8
  %23 = call i32 @put_device(%struct.device* %22)
  br label %24

24:                                               ; preds = %19, %3
  %25 = load %struct.bmc_device*, %struct.bmc_device** %9, align 8
  ret %struct.bmc_device* %25
}

declare dso_local %struct.device* @driver_find_device(%struct.device_driver*, i32*, %struct.prod_dev_id*, i32) #1

declare dso_local %struct.bmc_device* @to_bmc_device(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
