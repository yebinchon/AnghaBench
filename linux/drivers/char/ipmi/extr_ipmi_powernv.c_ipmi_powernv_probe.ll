; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_powernv.c_ipmi_powernv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_powernv.c_ipmi_powernv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.ipmi_smi_powernv = type { i64, %struct.ipmi_smi_powernv*, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ibm,ipmi-interface-id\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"No interface ID property\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"No interrupts property\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Unable to map irq from device tree\0A\00", align 1
@ipmi_opal_event = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"opal-ipmi\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Unable to request irq\0A\00", align 1
@IPMI_MAX_MSG_LENGTH = common dso_local global i64 0, align 8
@ipmi_powernv_smi_handlers = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"IPMI SMI registration failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ipmi_powernv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmi_powernv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ipmi_smi_powernv*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = icmp ne %struct.platform_device* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10, %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %138

19:                                               ; preds = %10
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %5, align 8
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.ipmi_smi_powernv* @devm_kzalloc(%struct.device* %22, i32 24, i32 %23)
  store %struct.ipmi_smi_powernv* %24, %struct.ipmi_smi_powernv** %4, align 8
  %25 = load %struct.ipmi_smi_powernv*, %struct.ipmi_smi_powernv** %4, align 8
  %26 = icmp ne %struct.ipmi_smi_powernv* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %138

30:                                               ; preds = %19
  %31 = load %struct.ipmi_smi_powernv*, %struct.ipmi_smi_powernv** %4, align 8
  %32 = getelementptr inbounds %struct.ipmi_smi_powernv, %struct.ipmi_smi_powernv* %31, i32 0, i32 3
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @of_property_read_u32(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %133

43:                                               ; preds = %30
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.ipmi_smi_powernv*, %struct.ipmi_smi_powernv** %4, align 8
  %46 = getelementptr inbounds %struct.ipmi_smi_powernv, %struct.ipmi_smi_powernv* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = getelementptr inbounds %struct.device, %struct.device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @of_property_read_u32(i32 %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %133

56:                                               ; preds = %43
  %57 = load %struct.device*, %struct.device** %5, align 8
  %58 = getelementptr inbounds %struct.device, %struct.device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @irq_of_parse_and_map(i32 %59, i32 0)
  %61 = load %struct.ipmi_smi_powernv*, %struct.ipmi_smi_powernv** %4, align 8
  %62 = getelementptr inbounds %struct.ipmi_smi_powernv, %struct.ipmi_smi_powernv* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.ipmi_smi_powernv*, %struct.ipmi_smi_powernv** %4, align 8
  %64 = getelementptr inbounds %struct.ipmi_smi_powernv, %struct.ipmi_smi_powernv* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %56
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = call i32 @dev_info(%struct.device* %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i32, i32* %6, align 4
  %71 = call i64 @opal_event_request(i32 %70)
  %72 = load %struct.ipmi_smi_powernv*, %struct.ipmi_smi_powernv** %4, align 8
  %73 = getelementptr inbounds %struct.ipmi_smi_powernv, %struct.ipmi_smi_powernv* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %67, %56
  %75 = load %struct.ipmi_smi_powernv*, %struct.ipmi_smi_powernv** %4, align 8
  %76 = getelementptr inbounds %struct.ipmi_smi_powernv, %struct.ipmi_smi_powernv* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @ipmi_opal_event, align 4
  %79 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %80 = load %struct.ipmi_smi_powernv*, %struct.ipmi_smi_powernv** %4, align 8
  %81 = call i32 @request_irq(i64 %77, i32 %78, i32 %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %struct.ipmi_smi_powernv* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load %struct.device*, %struct.device** %5, align 8
  %86 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %128

87:                                               ; preds = %74
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = load i64, i64* @IPMI_MAX_MSG_LENGTH, align 8
  %90 = add i64 24, %89
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call %struct.ipmi_smi_powernv* @devm_kmalloc(%struct.device* %88, i64 %90, i32 %91)
  %93 = load %struct.ipmi_smi_powernv*, %struct.ipmi_smi_powernv** %4, align 8
  %94 = getelementptr inbounds %struct.ipmi_smi_powernv, %struct.ipmi_smi_powernv* %93, i32 0, i32 1
  store %struct.ipmi_smi_powernv* %92, %struct.ipmi_smi_powernv** %94, align 8
  %95 = load %struct.ipmi_smi_powernv*, %struct.ipmi_smi_powernv** %4, align 8
  %96 = getelementptr inbounds %struct.ipmi_smi_powernv, %struct.ipmi_smi_powernv* %95, i32 0, i32 1
  %97 = load %struct.ipmi_smi_powernv*, %struct.ipmi_smi_powernv** %96, align 8
  %98 = icmp ne %struct.ipmi_smi_powernv* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %87
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %7, align 4
  br label %122

102:                                              ; preds = %87
  %103 = load %struct.ipmi_smi_powernv*, %struct.ipmi_smi_powernv** %4, align 8
  %104 = load %struct.device*, %struct.device** %5, align 8
  %105 = call i32 @ipmi_register_smi(i32* @ipmi_powernv_smi_handlers, %struct.ipmi_smi_powernv* %103, %struct.device* %104, i32 0)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load %struct.device*, %struct.device** %5, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %109, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %110)
  br label %116

112:                                              ; preds = %102
  %113 = load %struct.device*, %struct.device** %5, align 8
  %114 = load %struct.ipmi_smi_powernv*, %struct.ipmi_smi_powernv** %4, align 8
  %115 = call i32 @dev_set_drvdata(%struct.device* %113, %struct.ipmi_smi_powernv* %114)
  store i32 0, i32* %2, align 4
  br label %138

116:                                              ; preds = %108
  %117 = load %struct.device*, %struct.device** %5, align 8
  %118 = load %struct.ipmi_smi_powernv*, %struct.ipmi_smi_powernv** %4, align 8
  %119 = getelementptr inbounds %struct.ipmi_smi_powernv, %struct.ipmi_smi_powernv* %118, i32 0, i32 1
  %120 = load %struct.ipmi_smi_powernv*, %struct.ipmi_smi_powernv** %119, align 8
  %121 = call i32 @devm_kfree(%struct.device* %117, %struct.ipmi_smi_powernv* %120)
  br label %122

122:                                              ; preds = %116, %99
  %123 = load %struct.ipmi_smi_powernv*, %struct.ipmi_smi_powernv** %4, align 8
  %124 = getelementptr inbounds %struct.ipmi_smi_powernv, %struct.ipmi_smi_powernv* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.ipmi_smi_powernv*, %struct.ipmi_smi_powernv** %4, align 8
  %127 = call i32 @free_irq(i64 %125, %struct.ipmi_smi_powernv* %126)
  br label %128

128:                                              ; preds = %122, %84
  %129 = load %struct.ipmi_smi_powernv*, %struct.ipmi_smi_powernv** %4, align 8
  %130 = getelementptr inbounds %struct.ipmi_smi_powernv, %struct.ipmi_smi_powernv* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @irq_dispose_mapping(i64 %131)
  br label %133

133:                                              ; preds = %128, %53, %40
  %134 = load %struct.device*, %struct.device** %5, align 8
  %135 = load %struct.ipmi_smi_powernv*, %struct.ipmi_smi_powernv** %4, align 8
  %136 = call i32 @devm_kfree(%struct.device* %134, %struct.ipmi_smi_powernv* %135)
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %133, %112, %27, %16
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.ipmi_smi_powernv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i64 @irq_of_parse_and_map(i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i64 @opal_event_request(i32) #1

declare dso_local i32 @request_irq(i64, i32, i32, i8*, %struct.ipmi_smi_powernv*) #1

declare dso_local %struct.ipmi_smi_powernv* @devm_kmalloc(%struct.device*, i64, i32) #1

declare dso_local i32 @ipmi_register_smi(i32*, %struct.ipmi_smi_powernv*, %struct.device*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.ipmi_smi_powernv*) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.ipmi_smi_powernv*) #1

declare dso_local i32 @free_irq(i64, %struct.ipmi_smi_powernv*) #1

declare dso_local i32 @irq_dispose_mapping(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
