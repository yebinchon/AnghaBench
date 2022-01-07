; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c___get_device_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_msghandler.c___get_device_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi = type { i32*, i32 }
%struct.bmc_device = type { i32 }

@bmc_device_id_handler = common dso_local global i32* null, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_smi*, %struct.bmc_device*)* @__get_device_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_device_id(%struct.ipmi_smi* %0, %struct.bmc_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipmi_smi*, align 8
  %5 = alloca %struct.bmc_device*, align 8
  %6 = alloca i32, align 4
  store %struct.ipmi_smi* %0, %struct.ipmi_smi** %4, align 8
  store %struct.bmc_device* %1, %struct.bmc_device** %5, align 8
  %7 = load %struct.bmc_device*, %struct.bmc_device** %5, align 8
  %8 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %7, i32 0, i32 0
  store i32 2, i32* %8, align 4
  %9 = load i32*, i32** @bmc_device_id_handler, align 8
  %10 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %11 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %10, i32 0, i32 0
  store i32* %9, i32** %11, align 8
  %12 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %13 = call i32 @send_get_device_id_cmd(%struct.ipmi_smi* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %40

18:                                               ; preds = %2
  %19 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %20 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.bmc_device*, %struct.bmc_device** %5, align 8
  %23 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 2
  %26 = zext i1 %25 to i32
  %27 = call i32 @wait_event(i32 %21, i32 %26)
  %28 = load %struct.bmc_device*, %struct.bmc_device** %5, align 8
  %29 = getelementptr inbounds %struct.bmc_device, %struct.bmc_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %18
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %18
  %36 = call i32 (...) @smp_rmb()
  %37 = load %struct.ipmi_smi*, %struct.ipmi_smi** %4, align 8
  %38 = getelementptr inbounds %struct.ipmi_smi, %struct.ipmi_smi* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %16
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @send_get_device_id_cmd(%struct.ipmi_smi*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @smp_rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
