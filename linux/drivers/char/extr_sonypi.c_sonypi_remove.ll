; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_sonypi.c_sonypi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_sonypi.c_sonypi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { i32 }

@sonypi_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@useinput = common dso_local global i64 0, align 8
@sonypi_misc_device = common dso_local global i32 0, align 4
@sonypi_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sonypi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sonypi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %3 = call i32 (...) @sonypi_disable()
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sonypi_device, i32 0, i32 4), align 8
  %5 = call i32 @synchronize_irq(i32 %4)
  %6 = call i32 @flush_work(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sonypi_device, i32 0, i32 8))
  %7 = load i64, i64* @useinput, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sonypi_device, i32 0, i32 7), align 4
  %11 = call i32 @input_unregister_device(i32 %10)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sonypi_device, i32 0, i32 6), align 8
  %13 = call i32 @input_unregister_device(i32 %12)
  %14 = call i32 @kfifo_free(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sonypi_device, i32 0, i32 5))
  br label %15

15:                                               ; preds = %9, %1
  %16 = call i32 @misc_deregister(i32* @sonypi_misc_device)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sonypi_device, i32 0, i32 4), align 8
  %18 = load i32, i32* @sonypi_irq, align 4
  %19 = call i32 @free_irq(i32 %17, i32 %18)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sonypi_device, i32 0, i32 3), align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sonypi_device, i32 0, i32 2), align 8
  %22 = call i32 @release_region(i32 %20, i32 %21)
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sonypi_device, i32 0, i32 1), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sonypi_device, i32 0, i32 1), align 8
  %27 = call i32 @pci_disable_device(i64 %26)
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sonypi_device, i32 0, i32 1), align 8
  %29 = call i32 @pci_dev_put(i64 %28)
  br label %30

30:                                               ; preds = %25, %15
  %31 = call i32 @kfifo_free(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sonypi_device, i32 0, i32 0))
  ret i32 0
}

declare dso_local i32 @sonypi_disable(...) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @kfifo_free(i32*) #1

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i32 @free_irq(i32, i32) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @pci_disable_device(i64) #1

declare dso_local i32 @pci_dev_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
