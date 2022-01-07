; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_virtio-rng.c_remove_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_virtio-rng.c_remove_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { %struct.TYPE_2__*, %struct.virtrng_info* }
%struct.TYPE_2__ = type { i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)* }
%struct.virtrng_info = type { i32, i32, i32, i32, i64, i32, i64 }

@rng_index_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_device*)* @remove_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_common(%struct.virtio_device* %0) #0 {
  %2 = alloca %struct.virtio_device*, align 8
  %3 = alloca %struct.virtrng_info*, align 8
  store %struct.virtio_device* %0, %struct.virtio_device** %2, align 8
  %4 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %5 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %4, i32 0, i32 1
  %6 = load %struct.virtrng_info*, %struct.virtrng_info** %5, align 8
  store %struct.virtrng_info* %6, %struct.virtrng_info** %3, align 8
  %7 = load %struct.virtrng_info*, %struct.virtrng_info** %3, align 8
  %8 = getelementptr inbounds %struct.virtrng_info, %struct.virtrng_info* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.virtrng_info*, %struct.virtrng_info** %3, align 8
  %10 = getelementptr inbounds %struct.virtrng_info, %struct.virtrng_info* %9, i32 0, i32 6
  store i64 0, i64* %10, align 8
  %11 = load %struct.virtrng_info*, %struct.virtrng_info** %3, align 8
  %12 = getelementptr inbounds %struct.virtrng_info, %struct.virtrng_info* %11, i32 0, i32 5
  %13 = call i32 @complete(i32* %12)
  %14 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %15 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)** %17, align 8
  %19 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %20 = call i32 %18(%struct.virtio_device* %19)
  %21 = load %struct.virtrng_info*, %struct.virtrng_info** %3, align 8
  %22 = getelementptr inbounds %struct.virtrng_info, %struct.virtrng_info* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.virtrng_info*, %struct.virtrng_info** %3, align 8
  %24 = getelementptr inbounds %struct.virtrng_info, %struct.virtrng_info* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.virtrng_info*, %struct.virtrng_info** %3, align 8
  %29 = getelementptr inbounds %struct.virtrng_info, %struct.virtrng_info* %28, i32 0, i32 3
  %30 = call i32 @hwrng_unregister(i32* %29)
  br label %31

31:                                               ; preds = %27, %1
  %32 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %33 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.virtio_device*)*, i32 (%struct.virtio_device*)** %35, align 8
  %37 = load %struct.virtio_device*, %struct.virtio_device** %2, align 8
  %38 = call i32 %36(%struct.virtio_device* %37)
  %39 = load %struct.virtrng_info*, %struct.virtrng_info** %3, align 8
  %40 = getelementptr inbounds %struct.virtrng_info, %struct.virtrng_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ida_simple_remove(i32* @rng_index_ida, i32 %41)
  %43 = load %struct.virtrng_info*, %struct.virtrng_info** %3, align 8
  %44 = call i32 @kfree(%struct.virtrng_info* %43)
  ret void
}

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @hwrng_unregister(i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.virtrng_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
