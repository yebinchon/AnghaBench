; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_ipmi.c_ipmi_msg_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_ipmi.c_ipmi_msg_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ipmi_msg = type { i32, %struct.acpi_ipmi_device*, i32, i32, i32 }
%struct.acpi_ipmi_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ACPI_IPMI_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_ipmi_msg* ()* @ipmi_msg_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_ipmi_msg* @ipmi_msg_alloc() #0 {
  %1 = alloca %struct.acpi_ipmi_msg*, align 8
  %2 = alloca %struct.acpi_ipmi_device*, align 8
  %3 = alloca %struct.acpi_ipmi_msg*, align 8
  %4 = call %struct.acpi_ipmi_device* (...) @acpi_ipmi_dev_get()
  store %struct.acpi_ipmi_device* %4, %struct.acpi_ipmi_device** %2, align 8
  %5 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %2, align 8
  %6 = icmp ne %struct.acpi_ipmi_device* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.acpi_ipmi_msg* null, %struct.acpi_ipmi_msg** %1, align 8
  br label %33

8:                                                ; preds = %0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.acpi_ipmi_msg* @kzalloc(i32 32, i32 %9)
  store %struct.acpi_ipmi_msg* %10, %struct.acpi_ipmi_msg** %3, align 8
  %11 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %3, align 8
  %12 = icmp ne %struct.acpi_ipmi_msg* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %2, align 8
  %15 = call i32 @acpi_ipmi_dev_put(%struct.acpi_ipmi_device* %14)
  store %struct.acpi_ipmi_msg* null, %struct.acpi_ipmi_msg** %1, align 8
  br label %33

16:                                               ; preds = %8
  %17 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %17, i32 0, i32 4
  %19 = call i32 @kref_init(i32* %18)
  %20 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %20, i32 0, i32 3
  %22 = call i32 @init_completion(i32* %21)
  %23 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %3, align 8
  %24 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %23, i32 0, i32 2
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %2, align 8
  %27 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %3, align 8
  %28 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %27, i32 0, i32 1
  store %struct.acpi_ipmi_device* %26, %struct.acpi_ipmi_device** %28, align 8
  %29 = load i32, i32* @ACPI_IPMI_UNKNOWN, align 4
  %30 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %3, align 8
  %31 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %3, align 8
  store %struct.acpi_ipmi_msg* %32, %struct.acpi_ipmi_msg** %1, align 8
  br label %33

33:                                               ; preds = %16, %13, %7
  %34 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %1, align 8
  ret %struct.acpi_ipmi_msg* %34
}

declare dso_local %struct.acpi_ipmi_device* @acpi_ipmi_dev_get(...) #1

declare dso_local %struct.acpi_ipmi_msg* @kzalloc(i32, i32) #1

declare dso_local i32 @acpi_ipmi_dev_put(%struct.acpi_ipmi_device*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
