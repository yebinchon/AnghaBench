; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis.c_tpm_tis_force_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm_tis.c_tpm_tis_force_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32, i32, i32 }
%struct.platform_device = type { i32 }

@tpm_tis_force_device.x86_resources = internal constant [1 x %struct.resource] [%struct.resource { i32 -19660800, i32 129, i32 -19660673 }], align 4
@force = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"tpm_tis\00", align 1
@force_pdev = common dso_local global %struct.platform_device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tpm_tis_force_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_tis_force_device() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.platform_device*, align 8
  %3 = load i32, i32* @force, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %17

6:                                                ; preds = %0
  %7 = call i32 @ARRAY_SIZE(%struct.resource* getelementptr inbounds ([1 x %struct.resource], [1 x %struct.resource]* @tpm_tis_force_device.x86_resources, i64 0, i64 0))
  %8 = call %struct.platform_device* @platform_device_register_simple(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 -1, %struct.resource* getelementptr inbounds ([1 x %struct.resource], [1 x %struct.resource]* @tpm_tis_force_device.x86_resources, i64 0, i64 0), i32 %7)
  store %struct.platform_device* %8, %struct.platform_device** %2, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = call i64 @IS_ERR(%struct.platform_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %14 = call i32 @PTR_ERR(%struct.platform_device* %13)
  store i32 %14, i32* %1, align 4
  br label %17

15:                                               ; preds = %6
  %16 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  store %struct.platform_device* %16, %struct.platform_device** @force_pdev, align 8
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %15, %12, %5
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local %struct.platform_device* @platform_device_register_simple(i8*, i32, %struct.resource*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @PTR_ERR(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
