; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_ipmi.c_acpi_format_ipmi_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_ipmi.c_acpi_format_ipmi_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ipmi_msg = type { i64, %struct.acpi_ipmi_device*, %struct.TYPE_2__, i32, %struct.kernel_ipmi_msg }
%struct.acpi_ipmi_device = type { i32, i64, i32 }
%struct.TYPE_2__ = type { i64*, i32, i32 }
%struct.kernel_ipmi_msg = type { i64, i32, i32, i32 }
%struct.acpi_ipmi_buffer = type { i64, i32 }

@ACPI_IPMI_MAX_MSG_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Unexpected request (msg len %d).\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i32 0, align 4
@IPMI_BMC_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_ipmi_msg*, i32, i32*)* @acpi_format_ipmi_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_format_ipmi_request(%struct.acpi_ipmi_msg* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_ipmi_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kernel_ipmi_msg*, align 8
  %9 = alloca %struct.acpi_ipmi_buffer*, align 8
  %10 = alloca %struct.acpi_ipmi_device*, align 8
  %11 = alloca i64, align 8
  store %struct.acpi_ipmi_msg* %0, %struct.acpi_ipmi_msg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %5, align 8
  %13 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %12, i32 0, i32 4
  store %struct.kernel_ipmi_msg* %13, %struct.kernel_ipmi_msg** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @IPMI_OP_RGN_NETFN(i32 %14)
  %16 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %8, align 8
  %17 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @IPMI_OP_RGN_CMD(i32 %18)
  %20 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %8, align 8
  %21 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %5, align 8
  %23 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %8, align 8
  %26 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = bitcast i32* %27 to %struct.acpi_ipmi_buffer*
  store %struct.acpi_ipmi_buffer* %28, %struct.acpi_ipmi_buffer** %9, align 8
  %29 = load %struct.acpi_ipmi_buffer*, %struct.acpi_ipmi_buffer** %9, align 8
  %30 = getelementptr inbounds %struct.acpi_ipmi_buffer, %struct.acpi_ipmi_buffer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ACPI_IPMI_MAX_MSG_LENGTH, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %3
  %35 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %5, align 8
  %36 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %35, i32 0, i32 1
  %37 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %36, align 8
  %38 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.acpi_ipmi_buffer*, %struct.acpi_ipmi_buffer** %9, align 8
  %41 = getelementptr inbounds %struct.acpi_ipmi_buffer, %struct.acpi_ipmi_buffer* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @dev_WARN_ONCE(i32 %39, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %95

46:                                               ; preds = %3
  %47 = load %struct.acpi_ipmi_buffer*, %struct.acpi_ipmi_buffer** %9, align 8
  %48 = getelementptr inbounds %struct.acpi_ipmi_buffer, %struct.acpi_ipmi_buffer* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %8, align 8
  %51 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %5, align 8
  %53 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.acpi_ipmi_buffer*, %struct.acpi_ipmi_buffer** %9, align 8
  %56 = getelementptr inbounds %struct.acpi_ipmi_buffer, %struct.acpi_ipmi_buffer* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %8, align 8
  %59 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @memcpy(i32 %54, i32 %57, i64 %60)
  %62 = load i32, i32* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 4
  %63 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %5, align 8
  %64 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @IPMI_BMC_CHANNEL, align 4
  %67 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %5, align 8
  %68 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 8
  %70 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %5, align 8
  %71 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  store i64 0, i64* %74, align 8
  %75 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %5, align 8
  %76 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %75, i32 0, i32 1
  %77 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %76, align 8
  store %struct.acpi_ipmi_device* %77, %struct.acpi_ipmi_device** %10, align 8
  %78 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %10, align 8
  %79 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %78, i32 0, i32 0
  %80 = load i64, i64* %11, align 8
  %81 = call i32 @spin_lock_irqsave(i32* %79, i64 %80)
  %82 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %10, align 8
  %83 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %83, align 8
  %86 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %10, align 8
  %87 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %5, align 8
  %90 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %10, align 8
  %92 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %91, i32 0, i32 0
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %46, %34
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @IPMI_OP_RGN_NETFN(i32) #1

declare dso_local i32 @IPMI_OP_RGN_CMD(i32) #1

declare dso_local i32 @dev_WARN_ONCE(i32, i32, i8*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
