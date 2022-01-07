; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_main.c_bcma_of_fill_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_main.c_bcma_of_fill_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.bcma_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.bcma_device*)* @bcma_of_fill_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcma_of_fill_device(%struct.device* %0, %struct.bcma_device* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.bcma_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.bcma_device* %1, %struct.bcma_device** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %8 = call %struct.device_node* @bcma_of_find_child_device(%struct.device* %6, %struct.bcma_device* %7)
  store %struct.device_node* %8, %struct.device_node** %5, align 8
  %9 = load %struct.device_node*, %struct.device_node** %5, align 8
  %10 = icmp ne %struct.device_node* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %14 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.device_node* %12, %struct.device_node** %15, align 8
  br label %16

16:                                               ; preds = %11, %2
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %19 = call i32 @bcma_of_get_irq(%struct.device* %17, %struct.bcma_device* %18, i32 0)
  %20 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %21 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %23 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %22, i32 0, i32 0
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = call i32 @of_dma_configure(%struct.TYPE_2__* %23, %struct.device_node* %24, i32 0)
  ret void
}

declare dso_local %struct.device_node* @bcma_of_find_child_device(%struct.device*, %struct.bcma_device*) #1

declare dso_local i32 @bcma_of_get_irq(%struct.device*, %struct.bcma_device*, i32) #1

declare dso_local i32 @of_dma_configure(%struct.TYPE_2__*, %struct.device_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
