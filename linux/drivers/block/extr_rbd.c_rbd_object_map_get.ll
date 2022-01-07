; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_object_map_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_object_map_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_device*, i32)* @rbd_object_map_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_object_map_get(%struct.rbd_device* %0, i32 %1) #0 {
  %3 = alloca %struct.rbd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rbd_device* %0, %struct.rbd_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %7 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @__rbd_object_map_get(%struct.rbd_device* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %13 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %12, i32 0, i32 0
  %14 = call i32 @spin_unlock(i32* %13)
  %15 = load i32, i32* %5, align 4
  ret i32 %15
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__rbd_object_map_get(%struct.rbd_device*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
