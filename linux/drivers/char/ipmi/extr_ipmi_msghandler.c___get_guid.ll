; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c___get_guid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c___get_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32*, i32, %struct.bmc_device* }
%struct.bmc_device = type { i32 }

@guid_handler = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_smi*)* @__get_guid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__get_guid(%struct.ipmi_smi* %0) #0 {
  %2 = alloca %struct.ipmi_smi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bmc_device*, align 8
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %2, align 8
  %5 = load %struct.ipmi_smi*, %struct.ipmi_smi** %2, align 8
  %6 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %5, i32 0, i32 2
  %7 = load %struct.bmc_device*, %struct.bmc_device** %6, align 8
  store %struct.bmc_device* %7, %struct.bmc_device** %4, align 8
  %8 = load %struct.bmc_device*, %struct.bmc_device** %4, align 8
  %9 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %8, i32 0, i32 0
  store i32 2, i32* %9, align 4
  %10 = load i32*, i32** @guid_handler, align 8
  %11 = load %struct.ipmi_smi*, %struct.ipmi_smi** %2, align 8
  %12 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %11, i32 0, i32 0
  store i32* %10, i32** %12, align 8
  %13 = load %struct.ipmi_smi*, %struct.ipmi_smi** %2, align 8
  %14 = call i32 @send_guid_cmd(%struct.ipmi_smi* %13, i32 0)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.bmc_device*, %struct.bmc_device** %4, align 8
  %19 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.ipmi_smi*, %struct.ipmi_smi** %2, align 8
  %22 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.bmc_device*, %struct.bmc_device** %4, align 8
  %25 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 2
  %28 = zext i1 %27 to i32
  %29 = call i32 @wait_event(i32 %23, i32 %28)
  %30 = call i32 (...) @smp_rmb()
  %31 = load %struct.ipmi_smi*, %struct.ipmi_smi** %2, align 8
  %32 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  ret void
}

declare dso_local i32 @send_guid_cmd(%struct.ipmi_smi*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @smp_rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
