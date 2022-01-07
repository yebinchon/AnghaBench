; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/olpc/extr_olpc-xo15-sci.c_xo15_sci_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/olpc/extr_olpc-xo15-sci.c_xo15_sci_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.acpi_device = type { %struct.TYPE_9__, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@XO15_SCI_DEVICE_NAME = common dso_local global i32 0, align 4
@XO15_SCI_CLASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_GPE\00", align 1
@xo15_sci_gpe = common dso_local global i64 0, align 8
@ACPI_GPE_EDGE_TRIGGERED = common dso_local global i32 0, align 4
@xo15_sci_gpe_handler = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Initialized, GPE = 0x%lx\0A\00", align 1
@lid_wake_on_close_attr = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@EC_SCI_SRC_ALL = common dso_local global i32 0, align 4
@sci_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @xo15_sci_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xo15_sci_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = icmp ne %struct.acpi_device* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %79

12:                                               ; preds = %1
  %13 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %14 = call i32 @acpi_device_name(%struct.acpi_device* %13)
  %15 = load i32, i32* @XO15_SCI_DEVICE_NAME, align 4
  %16 = call i32 @strcpy(i32 %14, i32 %15)
  %17 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %18 = call i32 @acpi_device_class(%struct.acpi_device* %17)
  %19 = load i32, i32* @XO15_SCI_CLASS, align 4
  %20 = call i32 @strcpy(i32 %18, i32 %19)
  %21 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @acpi_evaluate_integer(i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %4)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @ACPI_FAILURE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %12
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %79

31:                                               ; preds = %12
  %32 = load i64, i64* %4, align 8
  store i64 %32, i64* @xo15_sci_gpe, align 8
  %33 = load i64, i64* @xo15_sci_gpe, align 8
  %34 = load i32, i32* @ACPI_GPE_EDGE_TRIGGERED, align 4
  %35 = load i32, i32* @xo15_sci_gpe_handler, align 4
  %36 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %37 = call i32 @acpi_install_gpe_handler(i32* null, i64 %33, i32 %34, i32 %35, %struct.acpi_device* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @ACPI_FAILURE(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %79

44:                                               ; preds = %31
  %45 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %46 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %45, i32 0, i32 0
  %47 = load i64, i64* @xo15_sci_gpe, align 8
  %48 = call i32 @dev_info(%struct.TYPE_9__* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  %49 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %50 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = call i32 @sysfs_create_file(i32* %51, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @lid_wake_on_close_attr, i32 0, i32 0))
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %73

56:                                               ; preds = %44
  %57 = call i32 (...) @process_sci_queue()
  %58 = load i32, i32* @EC_SCI_SRC_ALL, align 4
  %59 = call i32 @olpc_ec_mask_write(i32 %58)
  %60 = load i64, i64* @xo15_sci_gpe, align 8
  %61 = call i32 @acpi_enable_gpe(i32* null, i64 %60)
  %62 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %63 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %56
  %69 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %70 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %69, i32 0, i32 0
  %71 = call i32 @device_init_wakeup(%struct.TYPE_9__* %70, i32 1)
  br label %72

72:                                               ; preds = %68, %56
  store i32 0, i32* %2, align 4
  br label %79

73:                                               ; preds = %55
  %74 = load i64, i64* @xo15_sci_gpe, align 8
  %75 = load i32, i32* @xo15_sci_gpe_handler, align 4
  %76 = call i32 @acpi_remove_gpe_handler(i32* null, i64 %74, i32 %75)
  %77 = call i32 @cancel_work_sync(i32* @sci_work)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %73, %72, %41, %28, %9
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @acpi_device_name(%struct.acpi_device*) #1

declare dso_local i32 @acpi_device_class(%struct.acpi_device*) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_install_gpe_handler(i32*, i64, i32, i32, %struct.acpi_device*) #1

declare dso_local i32 @dev_info(%struct.TYPE_9__*, i8*, i64) #1

declare dso_local i32 @sysfs_create_file(i32*, i32*) #1

declare dso_local i32 @process_sci_queue(...) #1

declare dso_local i32 @olpc_ec_mask_write(i32) #1

declare dso_local i32 @acpi_enable_gpe(i32*, i64) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @acpi_remove_gpe_handler(i32*, i64, i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
