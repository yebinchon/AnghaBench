; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/common/extr_dmabounce.c_dmabounce_sync_for_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/common/extr_dmabounce.c_dmabounce_sync_for_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.device*, i32, i64, i32)* }
%struct.device = type { i32 }

@arm_dma_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32, i64, i32)* @dmabounce_sync_for_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmabounce_sync_for_device(%struct.device* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i64, i64* %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @__dmabounce_sync_for_device(%struct.device* %9, i32 %10, i64 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %23

16:                                               ; preds = %4
  %17 = load i32 (%struct.device*, i32, i64, i32)*, i32 (%struct.device*, i32, i64, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arm_dma_ops, i32 0, i32 0), align 8
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 %17(%struct.device* %18, i32 %19, i64 %20, i32 %21)
  br label %23

23:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @__dmabounce_sync_for_device(%struct.device*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
