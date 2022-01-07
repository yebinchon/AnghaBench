; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc-driver.c_register_dprc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc-driver.c_register_dprc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { i32, %struct.fsl_mc_device_irq** }
%struct.fsl_mc_device_irq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@dprc_irq0_handler = common dso_local global i32 0, align 4
@dprc_irq0_handler_thread = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"devm_request_threaded_irq() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_device*)* @register_dprc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_dprc_irq_handler(%struct.fsl_mc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_mc_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_mc_device_irq*, align 8
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %3, align 8
  %6 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %7 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %6, i32 0, i32 1
  %8 = load %struct.fsl_mc_device_irq**, %struct.fsl_mc_device_irq*** %7, align 8
  %9 = getelementptr inbounds %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %8, i64 0
  %10 = load %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %9, align 8
  store %struct.fsl_mc_device_irq* %10, %struct.fsl_mc_device_irq** %5, align 8
  %11 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %12 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %11, i32 0, i32 0
  %13 = load %struct.fsl_mc_device_irq*, %struct.fsl_mc_device_irq** %5, align 8
  %14 = getelementptr inbounds %struct.fsl_mc_device_irq, %struct.fsl_mc_device_irq* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @dprc_irq0_handler, align 4
  %19 = load i32, i32* @dprc_irq0_handler_thread, align 4
  %20 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %21 = load i32, i32* @IRQF_ONESHOT, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %24 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %23, i32 0, i32 0
  %25 = call i32 @dev_name(i32* %24)
  %26 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %27 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %26, i32 0, i32 0
  %28 = call i32 @devm_request_threaded_irq(i32* %12, i32 %17, i32 %18, i32 %19, i32 %22, i32 %25, i32* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %33 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %32, i32 0, i32 0
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
