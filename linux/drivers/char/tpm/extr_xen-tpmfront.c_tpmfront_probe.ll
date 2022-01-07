; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_xen-tpmfront.c_tpmfront_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_xen-tpmfront.c_tpmfront_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.xenbus_device_id = type { i32 }
%struct.tpm_private = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"allocating priv structure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.xenbus_device_id*)* @tpmfront_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpmfront_probe(%struct.xenbus_device* %0, %struct.xenbus_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca %struct.xenbus_device_id*, align 8
  %6 = alloca %struct.tpm_private*, align 8
  %7 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store %struct.xenbus_device_id* %1, %struct.xenbus_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.tpm_private* @kzalloc(i32 4, i32 %8)
  store %struct.tpm_private* %9, %struct.tpm_private** %6, align 8
  %10 = load %struct.tpm_private*, %struct.tpm_private** %6, align 8
  %11 = icmp ne %struct.tpm_private* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %13, i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %49

19:                                               ; preds = %2
  %20 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %21 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %20, i32 0, i32 0
  %22 = load %struct.tpm_private*, %struct.tpm_private** %6, align 8
  %23 = call i32 @setup_chip(i32* %21, %struct.tpm_private* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.tpm_private*, %struct.tpm_private** %6, align 8
  %28 = call i32 @kfree(%struct.tpm_private* %27)
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %49

30:                                               ; preds = %19
  %31 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %32 = load %struct.tpm_private*, %struct.tpm_private** %6, align 8
  %33 = call i32 @setup_ring(%struct.xenbus_device* %31, %struct.tpm_private* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.tpm_private*, %struct.tpm_private** %6, align 8
  %38 = call i32 @ring_free(%struct.tpm_private* %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %49

40:                                               ; preds = %30
  %41 = load %struct.tpm_private*, %struct.tpm_private** %6, align 8
  %42 = getelementptr inbounds %struct.tpm_private, %struct.tpm_private* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @tpm_get_timeouts(i32 %43)
  %45 = load %struct.tpm_private*, %struct.tpm_private** %6, align 8
  %46 = getelementptr inbounds %struct.tpm_private, %struct.tpm_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @tpm_chip_register(i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %40, %36, %26, %12
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.tpm_private* @kzalloc(i32, i32) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*) #1

declare dso_local i32 @setup_chip(i32*, %struct.tpm_private*) #1

declare dso_local i32 @kfree(%struct.tpm_private*) #1

declare dso_local i32 @setup_ring(%struct.xenbus_device*, %struct.tpm_private*) #1

declare dso_local i32 @ring_free(%struct.tpm_private*) #1

declare dso_local i32 @tpm_get_timeouts(i32) #1

declare dso_local i32 @tpm_chip_register(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
